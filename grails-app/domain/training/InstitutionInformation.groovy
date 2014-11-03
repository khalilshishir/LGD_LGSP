package training

class InstitutionInformation {

    static mapping = {
        table('TR_INSTITUTION_INFORMATION')
        version(false)
    }

    Long id
    String INSTITUTION_ID
    String INSTITUTION_NAME
    String INSTITUTION_NAME_BN

    Date INSTITUTION_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        INSTITUTION_ID(nullable: false)
        INSTITUTION_NAME(nullable: false)
        INSTITUTION_NAME_BN(nullable: true)
        INSTITUTION_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }

    String toString(){
        return INSTITUTION_NAME
    }
}
