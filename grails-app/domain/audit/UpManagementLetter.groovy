package audit

class UpManagementLetter {
    static mapping = {
        table("UP_MANAGEMENT_LETTER")
        version(false)
    }

    long id
    AuditPackage auditPackage
    String LETTER_SUBJECT
    String LETTER_SUBJECT_BN
    String LETTER_DESCRIPTION
    String LETTER_DESCRIPTION_BN
    Date   IFROM_DATE
    Date   ITO_DATE

    boolean IS_ACTIVE=Boolean.TRUE
    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        LETTER_SUBJECT(nullable: false)
        LETTER_DESCRIPTION(nullable: false)
        IFROM_DATE(nullable: false)
        ITO_DATE(nullable: false)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
        IS_ACTIVE (nullable: true)
        LETTER_DESCRIPTION_BN (nullable: true)
        LETTER_SUBJECT_BN (nullable: true)

    }
}
