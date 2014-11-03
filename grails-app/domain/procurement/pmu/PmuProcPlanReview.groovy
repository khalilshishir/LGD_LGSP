package procurement.pmu

class PmuProcPlanReview {

    static mapping = {
        table('PMU_PROC_REVIEW')
        version(false)
    }
    Long id
    PmuProcPlanWbs pmuProcurPlanWbs
    Date planningDate
    Integer day
    Date receivedDate
    String remarks
    String url

    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date CREATED_DATE = new Date()
    Date UPDATE_DATE = new Date()

    static constraints = {
        planningDate(nullable: true)
        day(nullable: true)
        receivedDate(nullable: true)
        remarks(nullable: true)
        url(nullable: true)
        CREATE_BY(nullable: true)
        UPDATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATE_DATE(nullable: true)
    }

}
