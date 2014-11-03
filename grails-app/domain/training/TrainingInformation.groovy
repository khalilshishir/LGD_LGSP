package training

import lookUp.AllLookup

class TrainingInformation {

    static mapping = {
        table('TR_TRAINING_INFORMATION')
        version(false)
    }

    Long id
    String TRAINING_INFO_ID
    AllLookup TRAINING_INFO_STATUS
    TrainingType TRAINING_TYPE
    Date TR_INFO_TRAINING_DATE = new Date()

    Date TR_INFO_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TRAINING_INFO_ID(nullable: false)
        TRAINING_INFO_STATUS(nullable: true)
        TRAINING_TYPE(nullable: false)
        TR_INFO_TRAINING_DATE(nullable: false)

        TR_INFO_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }

    String toString(){
        return TRAINING_INFO_ID
    }
}
