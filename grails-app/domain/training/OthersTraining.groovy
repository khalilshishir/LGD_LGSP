package training

import settings.UnionParishad

class OthersTraining {
    static mapping = {
        table('TR_OTHERS_TRAINING')
        version(false)
    }

    Long id
    String OTH_TR_ID
    String OTH_TR_NAME
    String OTH_TR_NAME_BN
    String OTH_TR_PARTICI_NAME
    String OTH_TR_PARTICI_NAME_BN
    String OTH_TR_PARTICI_ATTEN
    String OTH_TR_PARTICI_ATTEN_BN
    Date OTH_TR_START_DATE = new Date()
    Date OTH_TR_END_DATE = new Date()
    Level LEVEL
    TraineeCategory TRAINEE_CATEGORY
    TrainingType TRAINING_TYPE
    UnionParishad UNION_PARISHAD

    Date OTH_TR_ENTRY_DATE = new Date()
    Date CREATE_DATE=new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATE_DATE = new Date()


    static constraints = {

        OTH_TR_ID(nullable: false)
        OTH_TR_NAME(nullable: false)
        OTH_TR_NAME_BN(nullable: true)
        OTH_TR_PARTICI_NAME(nullable: false)
        OTH_TR_PARTICI_NAME_BN(nullable: true)
        OTH_TR_PARTICI_ATTEN(nullable: false)
        OTH_TR_PARTICI_ATTEN_BN(nullable: true)
        OTH_TR_START_DATE(nullable: false)
        OTH_TR_END_DATE(nullable: false)
        LEVEL(nullable: false)
        TRAINEE_CATEGORY(nullable: false)
        TRAINING_TYPE(nullable: false)
        UNION_PARISHAD(nullable: false)
        OTH_TR_ENTRY_DATE(nullable: false)
        CREATE_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATE_DATE(nullable: false)
    }
    String toString(){
        return OTH_TR_NAME
    }
}
