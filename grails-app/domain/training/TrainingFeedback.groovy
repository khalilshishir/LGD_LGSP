package training

class TrainingFeedback {

    static mapping = {
        table('TR_TRAINING_FEEDBACK')
        version(false)
    }
    Long id
    String TR_FEED_ID
    TrainingParticipantInformation TPI
    String TR_FEED_FEEDBACK
    String TR_FEED_FEEDBACK_BN
    Date TR_FEED_FEEDBACK_DATE = new Date()

    Date TR_FEED_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TR_FEED_ID(nullable: false)
        TPI(nullable: true)
        TR_FEED_FEEDBACK(nullable: false)
        TR_FEED_FEEDBACK_BN(nullable: true)
        TR_FEED_FEEDBACK_DATE(nullable: false)
        TR_FEED_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }
    String toString(){
        return TR_FEED_ID
    }
}
