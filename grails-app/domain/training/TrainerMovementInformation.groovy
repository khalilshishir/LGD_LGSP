package training

import settings.UnionParishad

class TrainerMovementInformation {

    static mapping = {
        table('TR_TRAINER_MOVEMENT_INFO')
        version(false)
    }
    Long id
    String TR_MOV_INFO_ID
    String TR_MOV_INFO_NAME
    String TR_MOV_INFO_NAME_BN
    String TR_MOV_INFO_PRE_LOCATION
    String TR_MOV_INFO_PRE_LOCATION_BN
    String TR_MOV_INFO_NEW_LOCATION
    String TR_MOV_INFO_NEW_LOCATION_BN
    Date TR_MOV_INFO_MOVEMENT_DATE = new Date()
    UnionParishad UNION_PARISHAD

    Date TR_MOV_INFO_ENTRY_DATE = new Date()
    Date CREATE_DATE=new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATE_DATE = new Date()

    static constraints = {
        TR_MOV_INFO_ID(nullable: false)
        TR_MOV_INFO_NAME(nullable: false)
        TR_MOV_INFO_NAME_BN(nullable: true)
        TR_MOV_INFO_PRE_LOCATION(nullable: false)
        TR_MOV_INFO_PRE_LOCATION_BN(nullable: true)
        TR_MOV_INFO_NEW_LOCATION(nullable: false)
        TR_MOV_INFO_NEW_LOCATION_BN(nullable: true)
        TR_MOV_INFO_MOVEMENT_DATE(nullable: false)
        UNION_PARISHAD(nullable: false)
        TR_MOV_INFO_ENTRY_DATE(nullable: false)
        CREATE_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATE_DATE(nullable: false)
    }
    String toString(){
        return TR_MOV_INFO_NAME
    }
}
