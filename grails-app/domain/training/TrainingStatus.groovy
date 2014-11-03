package training

class TrainingStatus {

    static mapping = {
        table('TR_TRAINING_STATUS')
        version(false)
    }

    Long id
    String TR_STAT_ID
    TraineeInformation TRAINEE_INFO
    Long TR_STAT_ATTENDENT
    String TR_STAT_ATTENDENT_BN
    Date TR_STAT_DATE_OF_TRAINING = new Date()
    Long TR_STAT_NO_OF_ABSENT
    String TR_STAT_NO_OF_ABSENT_BN
    Long TR_STAT_NO_OF_TRAINED
    String TR_STAT_NO_OF_TRAINED_BN

    Date TR_STAT_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TR_STAT_ID(nullable: false)
        TRAINEE_INFO(nullable: false)
        TR_STAT_ATTENDENT(nullable: false)
        TR_STAT_ATTENDENT_BN(nullable: true)
        TR_STAT_DATE_OF_TRAINING(nullable: false)
        TR_STAT_NO_OF_ABSENT(nullable: false)
        TR_STAT_NO_OF_ABSENT_BN(nullable: true)
        TR_STAT_NO_OF_TRAINED(nullable: false)
        TR_STAT_NO_OF_TRAINED_BN(nullable: true)
        TR_STAT_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }
    String toString(){
        return TR_STAT_ID
    }
}
