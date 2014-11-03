package procurement.pmu

import grails.converters.JSON

import java.text.SimpleDateFormat

class PmuProcPlanReviewController {

    def save() {
        println(params);
        LinkedHashMap result = new LinkedHashMap()
        String outPut

        Date planningDate = Date.parse("d/M/yyyy", params.planningDate)
        Date receivedDate = Date.parse("d/M/yyyy", params.receivedDate)

        PmuProcPlanReview pmuProcurPlanReview = new PmuProcPlanReview()
        def pmuProRev = PmuProcPlanWbs.read(params.wbsId)
        pmuProcurPlanReview.planningDate = planningDate
        pmuProcurPlanReview.receivedDate = receivedDate
        pmuProcurPlanReview.remarks = params.remarks
        pmuProcurPlanReview.day =Integer.parseInt(params.day)
        pmuProcurPlanReview.url = params.url
        pmuProcurPlanReview.pmuProcurPlanWbs = pmuProRev
        if (!pmuProcurPlanReview.save()) {
            result.put('message', 'Review is not save')
            result.put('pmuProcurPlanReview', pmuProcurPlanReview)
            outPut = result as JSON
            render outPut
            return
        }
        SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
        String plDate=DATE_FORMAT.format(pmuProcurPlanReview.planningDate)
        String rcvDate=DATE_FORMAT.format(pmuProcurPlanReview.receivedDate)
        result.put('isError', false)
        result.put('obj', pmuProcurPlanReview)
        result.put('planningDate', plDate)
        result.put('receivedDate', rcvDate)
        outPut = result as JSON
        render outPut
    }
    /* if (!pmuProcurPlanReview.save()) {
         flash.message = "Can't Save WBS"
         redirect controller: 'pmuProcurPlan', action: 'list'
     }
     flash.message = " WBS Save  Successfully"
     redirect controller: 'pmuProcurPlan', action: 'list'
 }*/
}