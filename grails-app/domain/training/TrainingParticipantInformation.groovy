package training

import settings.UnionParishad

class TrainingParticipantInformation {

    static mapping = {
        table('TR_TRAINING_PARTICIPANT_INFO')
        version(false)
    }
    Long id
    String TPI_ID
    String TPI_NAME
    TraineeInformation TRAINEE_INFORMATION
    String TPI_DURATION
    TrainingInformation TRAINING_INFORMATION
    Date TPI_TRAINING_DATE = new Date()
    TraineeCategory TRAINEE_CATEGORY
    UnionParishad UNION_PARISHAD
    TrainingBudget TRAINING_BUDGET
    String TPI_ATTENDENCE_TARGET
    Long TPI_NO_OF_BATCH
    TrainingStatus TRAINING_STATUS

    Date TPI_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TPI_ID(nullable: false)
        TPI_NAME(nullable: false)
        TRAINEE_INFORMATION(nullable: true)
        TPI_DURATION(nullable: false)
        TRAINING_INFORMATION(nullable: true)
        TPI_TRAINING_DATE(nullable: false)
        TRAINEE_CATEGORY(nullable: true)
        UNION_PARISHAD(nullable: true)
        TRAINING_BUDGET(nullable: true)
        TPI_ATTENDENCE_TARGET(nullable: false)
        TPI_NO_OF_BATCH(nullable: false)
        TRAINING_STATUS(nullable: true)
        TPI_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }
    String toString(){
        return TPI_ID
    }
}
