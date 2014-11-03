package procurement.pmu

import lookUp.AllLookup

class PmuProcPlan {
    static mapping = {
        table('PMU_PROC_PLAN')
        version(false)
        pmuProcurPlanWbs cascade: 'all'
    }
    Integer id
    String packageNo
    String contractDescription
    AllLookup unit
    Integer quantity
    Integer estimatedPrice
    AllLookup procurementMethod
    AllLookup procurementGuideLine
    Boolean isPrior=Boolean.FALSE
    Date planedDate=new Date()
    Date CREATE_DATE=new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATE_DATE = new Date()
    static hasMany = [pmuProcurPlanWbs: PmuProcPlanWbs]
    static constraints = {
        packageNo (nullable: false)
        contractDescription(nullable: false)
        unit (nullable: false)
        quantity(nullable: false)
        estimatedPrice(nullable: false)
        procurementMethod(nullable: false)
        procurementGuideLine(nullable: false)
        planedDate (nullable: false)

        CREATE_DATE(nullable: true)
        IS_ACTIVE(nullable: true)
        CREATE_BY(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATE_DATE(nullable: true)
 }
    String toString(){
        return packageNo
    }
}
