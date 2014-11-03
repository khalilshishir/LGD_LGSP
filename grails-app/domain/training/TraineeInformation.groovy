package training

import lookUp.AllLookup
import payroll.Department

class TraineeInformation {

    static mapping = {
        table('TR_TRAINEE_INFORMATION')
        version(false)
    }

    Long id
    String TRAINEE_INFO_ID
    String TRAINEE_INFO_NAME
    String TRAINEE_INFO_NAME_BN
    TraineeCategory TRAINEE_CATEGORY
    String TR_INFO_QUALIFICATION
    String TR_INFO_QUALIFICATION_BN
    String TRAINEE_INFO_AGE
    String TRAINEE_INFO_AGE_BN
    AllLookup TRAINEE_INFO_GENDER
    String TR_INFO_AREA_SPECIFICATION
    String TR_INFO_AREA_SPECIFICATION_BN
    String TRAINEE_INFO_PRE_ADDRESS
    String TRAINEE_INFO_PRE_ADDRESS_BN
    String TRAINEE_INFO_MOBILE
    String TRAINEE_INFO_MOBILE_BN
    String TRAINEE_INFO_EMAIL
    Level LEVEL
    Department DEPARTMENT

    Date TR_INFO_ENTRY_DATE = new Date()
    Date CREATE_DATE=new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATE_DATE = new Date()

    static constraints = {
        TRAINEE_INFO_ID(nullable: false)
        TRAINEE_INFO_NAME(nullable: false)
        TRAINEE_INFO_NAME_BN(nullable: true)
        TRAINEE_CATEGORY(nullable: false)
        TR_INFO_QUALIFICATION(nullable: false)
        TR_INFO_QUALIFICATION_BN(nullable: true)
        TRAINEE_INFO_AGE(nullable: false)
        TRAINEE_INFO_AGE_BN(nullable: true)
        TRAINEE_INFO_GENDER(nullable: false)
        TR_INFO_AREA_SPECIFICATION(nullable: false)
        TR_INFO_AREA_SPECIFICATION_BN(nullable: true)
        TRAINEE_INFO_PRE_ADDRESS(nullable: false)
        TRAINEE_INFO_PRE_ADDRESS_BN(nullable: true)
        TRAINEE_INFO_MOBILE(nullable: false)
        TRAINEE_INFO_MOBILE_BN(nullable: true)
        TRAINEE_INFO_EMAIL(nullable: true,email: true)
        LEVEL(nullable: false)
        DEPARTMENT(nullable: false)
        TR_INFO_ENTRY_DATE(nullable: false)
        CREATE_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATE_DATE(nullable: false)
    }
    String toString(){
        return TRAINEE_INFO_NAME
    }
}
