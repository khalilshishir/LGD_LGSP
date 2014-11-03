package training

class Level {

    static mapping = {
        table('TR_LEVEL')
        version(false)
    }

    Long id
    String LEVEL_ID
    String LEVEL_NAME
    String LEVEL_NAME_BN

    Date LEVEL_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()
    
    static constraints = {
        LEVEL_ID(nullable: false)
        LEVEL_NAME(nullable: false)
        LEVEL_NAME_BN(nullable: true)
        LEVEL_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }
    String toString(){
        return LEVEL_NAME
    }
}
