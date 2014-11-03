package training

import settings.UnionParishad

class TrainingOrientationRefresherTrainingPeerLearning {

    static mapping = {
        table('TR_ORI_PEER_LEARNING')
        version(false)
    }

    Long id
    String NAME_OF_TRAINING
    String NAME_OF_TRAINING_BN
    String SUBJECT
    String SUBJECT_BN
    String PARTICIPANT
    String PARTICIPANT_BN
    String DURATION
    String DURATION_BN
    String TRAINERS
    String TRAINERS_BN
    String TRAINING_EVALUATION
    String TRAINING_EVALUATION_BN
    String QTD_BY_PARTICIPANTS
    String QTD_BY_PARTICIPANTS_BN
    Date TRAINING_START_DATE = new Date()
    Date TRAINING_END_DATE = new Date()
    UnionParishad UNION_PARISHAD

    Date ENTRY_DATE = new Date()
    Date CREATE_DATE=new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATE_DATE = new Date()


    static constraints = {

        NAME_OF_TRAINING(nullable: false)
        NAME_OF_TRAINING_BN(nullable: true)
        SUBJECT(nullable: false)
        SUBJECT_BN(nullable: true)
        PARTICIPANT(nullable: false)
        PARTICIPANT_BN(nullable: true)
        DURATION(nullable: false)
        DURATION_BN(nullable: true)
        TRAINERS(nullable: false)
        TRAINERS_BN(nullable: true)
        TRAINING_EVALUATION(nullable: false)
        TRAINING_EVALUATION_BN(nullable: true)
        QTD_BY_PARTICIPANTS(nullable: false)
        QTD_BY_PARTICIPANTS_BN(nullable: true)
        TRAINING_START_DATE(nullable: false)
        TRAINING_END_DATE(nullable: false)
        UNION_PARISHAD(nullable: false)
        ENTRY_DATE(nullable: false)
        CREATE_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATE_DATE(nullable: false)
    }
    String toString(){
        return NAME_OF_TRAINING
    }
}
