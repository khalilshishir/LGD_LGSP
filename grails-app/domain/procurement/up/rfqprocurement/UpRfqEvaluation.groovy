package procurement.up.rfqprocurement

import procurement.up.Up_Proc_Master
import settings.Committee

class UpRfqEvaluation {
    static mapping = {
        table('UP_RFQ_EVALUATION')
        version(false)
        upRfqEvaluationSheetDetails cascade: 'all'
    }
    long id
    Date EVALUATION_DATE = new Date()

    Up_Proc_Master UP_PROC_MASTER
    Committee TEC

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static hasMany = [upRfqEvaluationSheetDetails: UpRfqEvaluationSheetDetails]

    static constraints = {
        EVALUATION_DATE(nullable: false)
        UP_PROC_MASTER(nullable: false)
        TEC(nullable: false)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return id
    }

}
