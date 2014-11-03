package procurement.pmu

class PmuProcPlanWbs {
    static mapping = {
        table 'PMU_PROC_WBS'
        // version is set to false, because this isn't available by default for legacy databases
        version false
        //PmuProcPlan cascade : 'all'
    }
    Long id
    PmuProcPlan pmuProcurPlan
    Date startDate
    Date endDate
    String taskName
    String taskDetails
    String type
    String status

    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATE_DATE = new Date()
    static constraints = {
        startDate(nullable:true)
        endDate(nullable:true)
        taskName(nullable:true)
        taskDetails(nullable:true)
        type(nullable:true)
        status(nullable:true)
        CREATE_BY(nullable:true)
        CREATE_DATE(nullable:true)
        UPDATED_BY(nullable:true)
        UPDATE_DATE(nullable:true)
}
String toString(){
        return taskName
    }
}
