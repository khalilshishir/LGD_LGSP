package training

class TrainingType {

    static mapping = {
        table('TR_TRAINING_TYPE')
        version(false)
    }

    Long id
    String TRAINING_TYPE_ID
    String TRAINING_TYPE_NAME
    String TRAINING_TYPE_NAME_BN

    Date TR_TYPE_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TRAINING_TYPE_ID(nullable: false)
        TRAINING_TYPE_NAME(nullable: false)
        TRAINING_TYPE_NAME_BN(nullable: true)
        TR_TYPE_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }

    String toString(){
        return TRAINING_TYPE_NAME
    }
}
