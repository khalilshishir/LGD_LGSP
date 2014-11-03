package audit

class Auditor {
    static mapping = {
        table('AUDITOR')
        version(false)
    }

    long id
    AuditFirm auditFirm
    String AUDITOR_ID
    String AUDITOR_NAME
    String AUDITOR_DESIGNATION
    String AUDITOR_PRES_ADD
    String AUDITOR_PER_ADD

    boolean IS_ACTIVE=Boolean.TRUE
    Long CREATED_BY=0
    Date CREATED_DATE = new Date()
    Long UPDATED_BY=0
    Date UPDATED_DATE =new Date()

    static constraints = {
        AUDITOR_ID(nullable: false)
        AUDITOR_NAME(nullable: false)
        AUDITOR_DESIGNATION(nullable: false)
        AUDITOR_PRES_ADD(nullable: false)
        AUDITOR_PER_ADD(nullable: false)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
        IS_ACTIVE (nullable: true)
    }
}
