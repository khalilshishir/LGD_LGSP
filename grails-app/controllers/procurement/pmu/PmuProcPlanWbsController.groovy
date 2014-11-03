package procurement.pmu

import grails.converters.JSON

import java.text.SimpleDateFormat

class PmuProcPlanWbsController {

    def save() {
        println(params);
        LinkedHashMap result=new LinkedHashMap()
        String outPut
        PmuProcPlanWbs pmuProcurPlanWbs=new PmuProcPlanWbs()
        def pmuProcPlan=PmuProcPlan.read(params.id)


        Date startDate=Date.parse( "d/M/yyyy", params.START_DATE )
        Date endDate=Date.parse( "d/M/yyyy", params.END_DATE )
//
//        SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
//
//        String date = DATE_FORMAT.format(params.START_DATE);
//

        pmuProcurPlanWbs.startDate=startDate
        pmuProcurPlanWbs.endDate=endDate
        pmuProcurPlanWbs.taskName=params.TASK_NAME
        pmuProcurPlanWbs.taskDetails=params.TASK_DETAILS
        pmuProcurPlanWbs.type=params.TYPE
        pmuProcurPlanWbs.status=params.STATUS_TYPE
        pmuProcurPlanWbs.pmuProcurPlan=pmuProcPlan


/* for  render form
   if (! pmuProcurPlanWbs.save()) {
            flash.message="Can't Save WBS"
            redirect controller: 'pmuProcurPlan',action: 'list'
        }
        flash.message=" WBS Save  Successfully"
        redirect controller: 'pmuProcurPlan',action: 'list'*/

// for json render
        if (! pmuProcurPlanWbs.save()) {
            result.put('message','wbs not save')
            outPut = result as JSON
            render outPut
            return
        }
        SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
        String stDate=DATE_FORMAT.format(pmuProcurPlanWbs.startDate)
        String enDate=DATE_FORMAT.format(pmuProcurPlanWbs.endDate)
        result.put('isError',false)
        result.put('obj',pmuProcurPlanWbs)
        result.put('startDate',stDate)
        result.put('endDate',enDate)
        outPut = result as JSON
        render outPut

    }
    def create(){
        print(params)
        LinkedHashMap result=new LinkedHashMap()
        String outPut
        def pmuWbs=PmuProcPlanWbs.read(params.wbsid)
        def reviewList= PmuProcPlanReview.findAllByPmuProcurPlanWbs(pmuWbs)

        List dataReturn=new ArrayList()
        int dataCount=0
        reviewList.each {
            PmuProcPlanReview pmuProcurPlanReview ->
                dataCount++
                SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
                String planningDate = DATE_FORMAT.format(pmuProcurPlanReview.planningDate);
                String receivedDate = DATE_FORMAT.format(pmuProcurPlanReview.receivedDate);

                dataReturn.add([id: pmuProcurPlanReview.id,planningDate:planningDate,
                        receivedDate:receivedDate,day:pmuProcurPlanReview.day,remarks:pmuProcurPlanReview.remarks
                ])

        }

        result.put('isError',false)
        result.put('pmuWbs',pmuWbs)
        result.put('obj',reviewList)
        result.put('dataReturn',dataReturn)
        outPut = result as JSON
        render outPut
    }

}
