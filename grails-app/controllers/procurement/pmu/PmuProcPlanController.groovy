package procurement.pmu

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

import java.text.SimpleDateFormat

class PmuProcPlanController {
def commonService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [pmuProcPlanInstanceList: PmuProcPlan.list(params), pmuProcPlanInstanceTotal: PmuProcPlan.count()]
//        def list=PmuProcPlan.list();
//        render (view: 'list',model: ["pmuProcPlanInstanceList":list])
    }

    def create() {
        [pmuProcPlanInstance: new PmuProcPlan(params)]
    }

    def save() {

        def pmuProcPlanInstance = new PmuProcPlan(params)
/*        String estimatedPriceCon=commonService.convertBanglaToEnglish(params.estimatedPrice)
       int estimatedPrice=Integer.parseInt(estimatedPriceCon);


        pmuProcPlanInstance.estimatedPrice=estimatedPrice*/
        if (!pmuProcPlanInstance.save(flush: true)) {
            render(view: "create", model: [pmuProcPlanInstance: pmuProcPlanInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'pmuProcPlan.label', default: 'PmuProcPlan'), pmuProcPlanInstance.id])
        redirect(action: "show", id: pmuProcPlanInstance.id)
    }

    def show(Long id) {
        def pmuProcPlanInstance = PmuProcPlan.get(id)
        if (!pmuProcPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pmuProcPlan.label', default: 'PmuProcPlan'), id])
            redirect(action: "list")
            return
        }

        [pmuProcPlanInstance: pmuProcPlanInstance]
    }

    def edit(Long id) {
        def pmuProcPlanInstance = PmuProcPlan.get(id)
        if (!pmuProcPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pmuProcPlan.label', default: 'PmuProcPlan'), id])
            redirect(action: "list")
            return
        }

        [pmuProcPlanInstance: pmuProcPlanInstance]
    }

    def update(Long id, Long version) {
        def pmuProcPlanInstance = PmuProcPlan.get(id)
        if (!pmuProcPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pmuProcPlan.label', default: 'PmuProcPlan'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (pmuProcPlanInstance.version > version) {
                pmuProcPlanInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'pmuProcPlan.label', default: 'PmuProcPlan')] as Object[],
                        "Another user has updated this PmuProcPlan while you were editing")
                render(view: "edit", model: [pmuProcPlanInstance: pmuProcPlanInstance])
                return
            }
        }

        pmuProcPlanInstance.properties = params

        if (!pmuProcPlanInstance.save(flush: true)) {
            render(view: "edit", model: [pmuProcPlanInstance: pmuProcPlanInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'pmuProcPlan.label', default: 'PmuProcPlan'), pmuProcPlanInstance.id])
        redirect(action: "show", id: pmuProcPlanInstance.id)
    }

    def delete(Long id) {
        def pmuProcPlanInstance = PmuProcPlan.get(id)
        if (!pmuProcPlanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pmuProcPlan.label', default: 'PmuProcPlan'), id])
            redirect(action: "list")
            return
        }

        try {
            pmuProcPlanInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'pmuProcPlan.label', default: 'PmuProcPlan'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pmuProcPlan.label', default: 'PmuProcPlan'), id])
            redirect(action: "show", id: id)
        }
    }
    def showone(){
        print(params)
        LinkedHashMap result=new LinkedHashMap()
        String outPut
        def pmuProcPlan=PmuProcPlan.read(params.id)
        def wbsList= PmuProcPlanWbs.findAllByPmuProcurPlan(pmuProcPlan)

        List dataReturn=new ArrayList()
        int dataCount=0
        wbsList.each {
            PmuProcPlanWbs pmuProcurPlanWbs ->
                dataCount++
                SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
                String startDate = DATE_FORMAT.format(pmuProcurPlanWbs.startDate);
                String endDate = DATE_FORMAT.format(pmuProcurPlanWbs.endDate);

                dataReturn.add([id: pmuProcurPlanWbs.id,start_date: startDate,
                        end_date:endDate,task_name:pmuProcurPlanWbs.taskName,task_details:pmuProcurPlanWbs.taskDetails,
                        type:pmuProcurPlanWbs.type,
                        status:pmuProcurPlanWbs.status])

        }

        result.put('isError',false)
        result.put('pmuProcPlan',pmuProcPlan)
        result.put('obj',wbsList)
        result.put('dataReturn',dataReturn)
        outPut = result as JSON
        render outPut

    }
}
