package audit

class AuditFirm {
    static mapping = {
        table('AUDIT_FIRM')
        version(false)
    }
    long id
    String AUDIT_FIRM_ID
    String AUDIT_FIRM_NAME
    String AUDIT_FIRM_ADDRESS
    String AUDIT_FIRM_PHONE
    String AUDIT_FIRM_EMAIL


    Long CREATED_BY=0
    Date CREATED_DATE = new Date()
    Long UPDATED_BY=0
    Date UPDATED_DATE =new Date()

    static constraints = {
        AUDIT_FIRM_ID(nullable: false)
        AUDIT_FIRM_NAME(nullable: false)
        AUDIT_FIRM_ADDRESS(nullable: false)
        AUDIT_FIRM_PHONE(nullable: false)
        AUDIT_FIRM_EMAIL(nullable: false)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
}
