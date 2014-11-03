package grantmanagement

import org.springframework.dao.DataIntegrityViolationException

class PerformanceIndicatorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [performanceIndicatorInstanceList: PerformanceIndicator.list(params), performanceIndicatorInstanceTotal: PerformanceIndicator.count()]
    }

    def create() {
        [performanceIndicatorInstance: new PerformanceIndicator(params)]
    }

    def save() {
        def performanceIndicatorInstance = new PerformanceIndicator(params)
        if (!performanceIndicatorInstance.save(flush: true)) {
            render(view: "create", model: [performanceIndicatorInstance: performanceIndicatorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'performanceIndicator.label', default: 'PerformanceIndicator'), performanceIndicatorInstance.id])
        redirect(action: "show", id: performanceIndicatorInstance.id)
    }

    def show(Long id) {
        def performanceIndicatorInstance = PerformanceIndicator.get(id)
        if (!performanceIndicatorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceIndicator.label', default: 'PerformanceIndicator'), id])
            redirect(action: "list")
            return
        }

        [performanceIndicatorInstance: performanceIndicatorInstance]
    }

    def edit(Long id) {
        def performanceIndicatorInstance = PerformanceIndicator.get(id)
        def performanceHead=performanceIndicatorInstance.performanceHead.organiztionType.keyword
        if (!performanceIndicatorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceIndicator.label', default: 'PerformanceIndicator'), id])
            redirect(action: "list")
            return
        }

        [performanceIndicatorInstance: performanceIndicatorInstance,orgType:performanceHead]
    }

    def update(Long id, Long version) {
        def performanceIndicatorInstance = PerformanceIndicator.get(id)
        if (!performanceIndicatorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceIndicator.label', default: 'PerformanceIndicator'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (performanceIndicatorInstance.version > version) {
                performanceIndicatorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'performanceIndicator.label', default: 'PerformanceIndicator')] as Object[],
                        "Another user has updated this PerformanceIndicator while you were editing")
                render(view: "edit", model: [performanceIndicatorInstance: performanceIndicatorInstance])
                return
            }
        }

        performanceIndicatorInstance.properties = params

        if (!performanceIndicatorInstance.save(flush: true)) {
            render(view: "edit", model: [performanceIndicatorInstance: performanceIndicatorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'performanceIndicator.label', default: 'PerformanceIndicator'), performanceIndicatorInstance.id])
        redirect(action: "show", id: performanceIndicatorInstance.id)
    }

    def delete(Long id) {
        def performanceIndicatorInstance = PerformanceIndicator.get(id)
        if (!performanceIndicatorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceIndicator.label', default: 'PerformanceIndicator'), id])
            redirect(action: "list")
            return
        }

        try {
            performanceIndicatorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'performanceIndicator.label', default: 'PerformanceIndicator'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'performanceIndicator.label', default: 'PerformanceIndicator'), id])
            redirect(action: "show", id: id)
        }
    }






    def GetPerformanceIndicatorByHeadId(){
        if (request.xhr) {
            def headId=params.head_id
            StringBuilder sb= new StringBuilder()
            sb.append("<tr>\n" +
                    "            <th>\n" +
                    "                Serial No\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Indicator Name\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Mark\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Performance Measure\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Means Of Verification\n" +
                    "            </th>\n" +
                    "        </tr>")
            PerformanceHead performanceHead=PerformanceHead.findById(headId)
            List<PerformanceIndicator> lstperformanceIndicator=PerformanceIndicator.findAllByPerformanceHead(performanceHead).sort{it.slNo}

            for(performanceIndicator in lstperformanceIndicator){
                if(performanceIndicator.meansOfVerification==null)
                    performanceIndicator.meansOfVerification=""
                if(performanceIndicator.performanceMeasure==null)
                    performanceIndicator.performanceMeasure=""
                sb.append("<tr>\n" +
                        "            <td>"+performanceIndicator.slNo+"</td>\n" +
                        "            <td>"+performanceIndicator.indicatorName+"</td>\n" +
                        "            <td>"+performanceIndicator.mark+"</td>\n" +
                        "            <td>"+performanceIndicator.performanceMeasure+"</td>\n" +
                        "            <td>"+performanceIndicator.meansOfVerification+"</td>\n" +
                        "        </tr>")
            }
            render sb.toString()
        }else{
            render "Restricted!"
        }
        return

    }



    def GetPerformanceHeadTotalMark(){
        if (request.xhr) {
            def headId=params.head_id
            StringBuilder sb= new StringBuilder()
            PerformanceHead performanceHead=PerformanceHead.findById(headId)
            sb.append(performanceHead.mark)
            render sb.toString()
        }else{
            render "Restricted!"
        }
        return

    }






}
