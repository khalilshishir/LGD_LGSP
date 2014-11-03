package audit

class UpInspection {

    static mapping = {
        table("UP_INSPECTION")
        version(false)
    }

    long id
    AuditPackage auditPackage
    String UP_I_REP_NAME
    String UP_I_REP_NAME_BN
    String UP_I_REP_DES
    String UP_I_REP_DES_BN
    String UP_I_REP_EXPE
    Date IFROM_DATE
    Date ITO_DATE

    boolean IS_ACTIVE=Boolean.TRUE
    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()


    static constraints = {
        UP_I_REP_NAME(nullable: false)
        UP_I_REP_NAME_BN (nullable: false)
        UP_I_REP_DES(nullable: false)
        UP_I_REP_DES_BN (nullable: false)
        IFROM_DATE(nullable: false)
        ITO_DATE(nullable: false)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
        IS_ACTIVE (nullable: true)

    }
}
