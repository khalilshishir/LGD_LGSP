package grantmanagement

import org.springframework.dao.DataIntegrityViolationException

class MarkDstributionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [markDstributionInstanceList: MarkDstribution.list(params), markDstributionInstanceTotal: MarkDstribution.count()]
    }

    def create() {
        [markDstributionInstance: new MarkDstribution(params)]
    }

    def save() {
        def markDstributionInstance = new MarkDstribution(params)
        if (!markDstributionInstance.save(flush: true)) {
            render(view: "create", model: [markDstributionInstance: markDstributionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'markDstribution.label', default: 'MarkDstribution'), markDstributionInstance.id])
        redirect(action: "show", id: markDstributionInstance.id)
    }

    def show(Long id) {
        def markDstributionInstance = MarkDstribution.get(id)
        if (!markDstributionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'markDstribution.label', default: 'MarkDstribution'), id])
            redirect(action: "list")
            return
        }

        [markDstributionInstance: markDstributionInstance]
    }

    def edit(Long id) {
        def markDstributionInstance = MarkDstribution.get(id)
        if (!markDstributionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'markDstribution.label', default: 'MarkDstribution'), id])
            redirect(action: "list")
            return
        }

        [markDstributionInstance: markDstributionInstance]
    }

    def update(Long id, Long version) {
        def markDstributionInstance = MarkDstribution.get(id)
        if (!markDstributionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'markDstribution.label', default: 'MarkDstribution'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (markDstributionInstance.version > version) {
                markDstributionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'markDstribution.label', default: 'MarkDstribution')] as Object[],
                        "Another user has updated this MarkDstribution while you were editing")
                render(view: "edit", model: [markDstributionInstance: markDstributionInstance])
                return
            }
        }

        markDstributionInstance.properties = params

        if (!markDstributionInstance.save(flush: true)) {
            render(view: "edit", model: [markDstributionInstance: markDstributionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'markDstribution.label', default: 'MarkDstribution'), markDstributionInstance.id])
        redirect(action: "show", id: markDstributionInstance.id)
    }

    def delete(Long id) {
        def markDstributionInstance = MarkDstribution.get(id)
        if (!markDstributionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'markDstribution.label', default: 'MarkDstribution'), id])
            redirect(action: "list")
            return
        }

        try {
            markDstributionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'markDstribution.label', default: 'MarkDstribution'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'markDstribution.label', default: 'MarkDstribution'), id])
            redirect(action: "show", id: id)
        }
    }

    def GetPerformanceIndicatorByHeadId(){
        if (request.xhr) {
            def headId=params.head_id
            StringBuilder sb= new StringBuilder()

            PerformanceHead performanceHead=PerformanceHead.findById(headId)
            List<PerformanceIndicator> lstperformanceIndicator=PerformanceIndicator.findAllByPerformanceHead(performanceHead)

            sb.append("<option value='null'>Select</option>")
            for(performanceIndicator in lstperformanceIndicator){
                sb.append("<option value='"+performanceIndicator.id+"'>"+performanceIndicator.indicatorName+"</option>")
            }
            render sb.toString()
        }else{
            render "Restricted!"
        }
        return
    }

    def GetMarkDistributionByPerformanceId(){
        if (request.xhr) {
            def indicatorId=params.indicator_id
            StringBuilder sb= new StringBuilder()

            PerformanceIndicator performanceIndicator=PerformanceIndicator.findById(indicatorId)

            List<MarkDstribution>markDstributionList = MarkDstribution.findAllByPerformanceIndicator(performanceIndicator).sort{it.slNo}

//            sb.append("<option value='null'>Select</option>")
            sb.append("<tr>\n" +
                    "            <th>\n" +
                    "                Serial No\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Rules\n" +
                    "            </th>\n" +
                    "            <th>\n" +
                    "                Mark\n" +
                    "            </th>\n" +
                    "        </tr>")
            for(markDistribution in markDstributionList){
                sb.append("""<tr>
                                 <td>"""+markDistribution.slNo+"""</td>
                                 <td>"""+markDistribution.rules+"""</td>
                                 <td>"""+markDistribution.mark+"""</td>
                             </tr>""")
            }
            render sb.toString()
        }else{
            render "Restricted!"
        }
        return
    }
}
