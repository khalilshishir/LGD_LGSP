package audit

import settings.UnionParishad

class AuditPdis {
    static mapping = {
        table("AUDIT_PACK_DIST")
        version(false)
    }

    long id
    AuditPackage auditPackage
    AuditFirm auditFirm
    Auditor auditor
    String AUDIT_PDIS_ID
    Date AUDIT_PDIS_DATE
    UnionParishad unionParishad

    boolean IS_ACTIVE=Boolean.TRUE
    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()



    static constraints = {
        AUDIT_PDIS_ID(nullable: false)
        AUDIT_PDIS_DATE(nullable: false)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
        IS_ACTIVE (nullable: true)
    }
}
