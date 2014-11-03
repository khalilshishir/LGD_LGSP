package training

import settings.UnionParishad

class TrainingParticipantsAbsentReason {

    static mapping = {
        table('TR_TRAINING_PARTI_ABS_REAS')
        version(false)
    }
    Long id
    String TPAR_ID
    String TPAR_NAME
    String TPAR_NAME_BN
    String TPAR_REASON
    String TPAR_REASON_BN
    Date TPAR_ABSENT_DATE = new Date()
    TrainingParticipantInformation TPI
    UnionParishad UNION_PARISHAD

    Date TPAR_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TPAR_ID(nullable: false)
        TPAR_NAME(nullable: false)
        TPAR_NAME_BN(nullable: true)
        TPAR_REASON(nullable: false)
        TPAR_REASON_BN(nullable: true)
        TPAR_ABSENT_DATE(nullable: false)
        TPI(nullable: true)
        UNION_PARISHAD(nullable: false)
        TPAR_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }
    String toString(){
        return TPAR_ID
    }
}
