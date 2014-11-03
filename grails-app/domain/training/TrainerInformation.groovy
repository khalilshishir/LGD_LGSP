package training

import lookUp.AllLookup

class TrainerInformation {

    static mapping = {
        table('TR_TRAINER_INFORMATION')
        version(false)
    }
    Long id
    String TR_INFO_ID
    String TR_INFO_NAME
    String TR_INFO_NAME_BN
    TrainerCategory TRAINER_CATEGORY
    String TR_INFO_QUALIFICATION
    String TR_INFO_QUALIFICATION_BN
    String TR_INFO_ADDRESS
    String TR_INFO_ADDRESS_BN
    String TR_INFO_PHONE
    String TR_INFO_PHONE_BN
    String TR_INFO_MOBILE
    String TR_INFO_MOBILE_BN
    String TR_INFO_AGE
    String TR_INFO_AGE_BN
    AllLookup TRAINER_INFO_GENDER

    Date TR_INFO_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TR_INFO_ID(nullable: false)
        TR_INFO_NAME(nullable: false)
        TR_INFO_NAME_BN(nullable: true)
        TRAINER_CATEGORY(nullable: false)
        TR_INFO_QUALIFICATION(nullable: false)
        TR_INFO_QUALIFICATION_BN(nullable: true)
        TR_INFO_ADDRESS(nullable: false)
        TR_INFO_ADDRESS_BN(nullable: true)
        TR_INFO_PHONE(nullable: false)
        TR_INFO_PHONE_BN(nullable: true)
        TR_INFO_MOBILE(nullable: false)
        TR_INFO_MOBILE_BN(nullable: true)
        TR_INFO_AGE(nullable: false)
        TR_INFO_AGE_BN(nullable: true)
        TRAINER_INFO_GENDER(nullable: true)
        TR_INFO_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }
    String toString(){
        return TR_INFO_NAME
    }
}
