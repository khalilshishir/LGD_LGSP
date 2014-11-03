package procurement.up.rfqprocurement

class UpRfqEvaluationSheetDetails {
    static mapping = {
        table('UP_RFQ_EVAL_SHEET_DETAILS')
        version(false)
    }
    long id
    String VENDOR_NAME
    double PRICE
    double VENDOR_SCORE
    double INVITED_SPEC_AMOUNT
    double SUB_SPEC_AMOUNT
    String SSC_COMMENTS
    Date ENTRY_DATE = new Date()

    UpRfqEvaluation upRfqEvaluation

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()
    static constraints = {
        VENDOR_NAME(nullable: false)
        PRICE(nullable: false)
        VENDOR_SCORE(nullable: false)
        INVITED_SPEC_AMOUNT(nullable: false)
        SUB_SPEC_AMOUNT(nullable: false)
        SSC_COMMENTS(nullable: false)
        ENTRY_DATE(nullable: false)
        upRfqEvaluation(nullable: false)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return VENDOR_NAME
    }

}
