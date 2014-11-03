package audit

class AuditPackage {
    static mapping = {
        table('AUDIT_PACKAGE')
        version(false)
    }

    long id
    String AUDIT_PACK_ID
    String AUDIT_PACK_NAME

    Long CREATED_BY=0
    Date CREATED_DATE = new Date()
    Long UPDATED_BY=0
    Date UPDATED_DATE =new Date()

    static constraints = {
       AUDIT_PACK_ID(nullable: false)
        AUDIT_PACK_NAME(nullable: false)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }


}
