package procurement.up.otmprocurement

import procurement.up.Up_Proc_Master
import settings.Committee

class UpOtmEvaluation {
    static mapping = {
        table('UP_OTM_EVALUATION')
        version(false)
        upOtmEvaluationSheetDetails cascade: 'all'
    }
    long id
//    Date INVITATION_DATE = new Date()
//    Date OPENING_DATE = new Date()
    Date EVALUATION_DATE = new Date()

    Up_Proc_Master UP_PROC_MASTER
    Committee TEC

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static hasMany = [upOtmEvaluationSheetDetails: UpOtmEvaluationSheetDetails]

    static constraints = {
//        INVITATION_DATE(nullable: false)
//        OPENING_DATE(nullable: false)
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
