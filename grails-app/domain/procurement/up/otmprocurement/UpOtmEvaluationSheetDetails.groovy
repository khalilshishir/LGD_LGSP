package procurement.up.otmprocurement

class UpOtmEvaluationSheetDetails {
    static mapping = {
        table('UP_OTM_EVAL_SHEET_DETAILS')
        version(false)
    }
    long id
    String VENDOR_NAME
    double PRICE
    String INVITATOR_QUALIFICATIONS
    String GOODS_SPECIFICATIONS
    String OTHER_CONDITIONS
    double QUOTED_UNIT_PRICE
    double QUOTED_PRICE
    String OVERALL_ACCEPTANCE
    String POSITION_BY_QUOTED_PRICE
    Date ENTRY_DATE = new Date()

    UpOtmEvaluation upOtmEvaluation

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()
    static constraints = {
        VENDOR_NAME(nullable: false)
        PRICE(nullable: false)
        INVITATOR_QUALIFICATIONS(nullable: false)
        GOODS_SPECIFICATIONS(nullable: false)
        OTHER_CONDITIONS(nullable: false)
        QUOTED_UNIT_PRICE(nullable: false)
        QUOTED_PRICE(nullable: false)
        OVERALL_ACCEPTANCE(nullable: false)
        POSITION_BY_QUOTED_PRICE(nullable: false)
        ENTRY_DATE(nullable: false)
        upOtmEvaluation(nullable: false)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return VENDOR_NAME
    }

}
