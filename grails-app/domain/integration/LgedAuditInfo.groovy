package integration

import audit.AuditFirm

class LgedAuditInfo {
    static mapping = {
        table("LGED_AUDIT_INFO")
        version(false)
        auditFirm column: 'AUDIT_FIRM_ID'
        lgedOffice column: 'LGED_OFFICE_ID'

        generalNoOfGeneralComplain column: 'GNRL_NO_GNRL_COMPLAIN'
        generalAmountOfGeneralComplain column: 'GNRL_AMT_GNRL_COMPLAIN'
        advanceAmountOfGeneralComplain column: 'ADV_AMT_GNRL_COMPLAIN'
        advanceNoOfGeneralComplain column: 'ADV_NO_GNRL_COMPLAIN'
        reportedNoOfGeneralComplain column: 'RPT_NO_GNRL_COMPLAIN'
        reportedAmountOfGeneralComplain column: 'RPT_AMT_GNRL_COMPLAIN'
        totalNoOfGeneralComplain column: 'TTL_NO_GNRL_COMPLAIN'
        totalAmountOfGeneralComplain column: 'TTL_AMT_GNRL_COMPLAIN'

        generalNoOfPresentComplain column: 'GNRL_NO_PNT_COMPLAIN'
        generalAmountOfPresentComplain column: 'GNRL_AMT_PNT_COMPLAIN'
        advanceNoOfPresentComplain column: 'ADV_NO_PNT_COMPLAIN'
        advanceAmountOfPresentComplain column: 'ADV_AMT_PNT_COMPLAIN'
        reportedAmountOfPresentComplain column: 'RPT_AMT_PNT_COMPLAIN'
        reportedNoOfPresentComplain column: 'RPT_NO_PNT_COMPLAIN'
        totalNoOfPresentComplain column: 'TTL_NO_PNT_COMPLAIN'
        totalAmountOfPresentComplain column: 'TTL_AMT_PNT_COMPLAIN'

        generalNoOfOutstandingComplain column: 'GNRL_NO_OUT_COMPLAIN'
        generalAmountOfOutstandingComplain column: 'GNRL_AMT_OUT_COMPLAIN'
        advanceNoOfOutstandingComplain column: 'ADV_NO_OUT_COMPLAIN'
        advanceAmountOfOutstandingComplain column: 'ADV_AMT_OUT_COMPLAIN'
        reportedAmountOfOutstandingComplain column: 'RPT_AMT_OUT_COMPLAIN'
        reportedNoOfOutstandingComplain column: 'RPT_NO_OUT_COMPLAIN'
        totalNoOfOutstandingComplain column: 'TTL_NO_OUT_COMPLAIN'
        totalAmountOfOutstandingComplain column: 'TTL_AMT_OUT_COMPLAIN'
    }
    Long id
    LgedOffice lgedOffice
    AuditFirm auditFirm
    Date complainDate
    String sectionNumber
    String auditInfoName
    Double amount
    Integer generalNoOfGeneralComplain
    Double generalAmountOfGeneralComplain
    Integer advanceNoOfGeneralComplain
    Double advanceAmountOfGeneralComplain
    Integer reportedNoOfGeneralComplain
    Double reportedAmountOfGeneralComplain
    Integer totalNoOfGeneralComplain
    Double totalAmountOfGeneralComplain
    Integer generalNoOfPresentComplain
    Double generalAmountOfPresentComplain
    Integer advanceNoOfPresentComplain
    Double advanceAmountOfPresentComplain
    Integer reportedNoOfPresentComplain
    Double reportedAmountOfPresentComplain
    Integer totalNoOfPresentComplain
    Double totalAmountOfPresentComplain
    Integer generalNoOfOutstandingComplain
    Double generalAmountOfOutstandingComplain
    Integer advanceNoOfOutstandingComplain
    Double advanceAmountOfOutstandingComplain
    Integer reportedNoOfOutstandingComplain
    Double reportedAmountOfOutstandingComplain
    Integer totalNoOfOutstandingComplain
    Double totalAmountOfOutstandingComplain
    Integer totalNoOfAllComplain
    Double totalAmountOfAllComplain
    String lessThanOneYear
    String moreThanOneYear

//    static hasMany = [lgedOffice: LgedOffice, auditFirm: AuditFirm]


    static constraints = {

        moreThanOneYear(nullable: true,blank: true)
        lessThanOneYear(nullable: true,blank: true)
        totalAmountOfAllComplain(nullable: true,blank: true)
        totalNoOfAllComplain(nullable: true,blank: true)
        generalAmountOfOutstandingComplain(nullable: true,blank: true)
        generalNoOfOutstandingComplain(nullable: true,blank: true)
        advanceNoOfOutstandingComplain(nullable: true,blank: true)
        advanceAmountOfOutstandingComplain(nullable: true,blank: true)
        reportedNoOfOutstandingComplain(nullable: true,blank: true)
        reportedAmountOfOutstandingComplain(nullable: true,blank: true)
        totalNoOfOutstandingComplain(nullable: true,blank: true)
        totalAmountOfOutstandingComplain(nullable: true,blank: true)
        generalNoOfPresentComplain(nullable: true,blank: true)
        generalAmountOfPresentComplain(nullable: true,blank: true)
        advanceNoOfPresentComplain(nullable: true,blank: true)
        advanceAmountOfPresentComplain(nullable: true,blank: true)
        reportedNoOfPresentComplain(nullable: true,blank: true)
        reportedAmountOfPresentComplain(nullable: true,blank: true)
        totalNoOfPresentComplain(nullable: true,blank: true)
        totalAmountOfPresentComplain(nullable: true,blank: true)
        generalNoOfGeneralComplain(nullable: true,blank: true)
        generalAmountOfGeneralComplain(nullable: true,blank: true)
        advanceNoOfGeneralComplain(nullable: true,blank: true)
        advanceAmountOfGeneralComplain(nullable: true,blank: true)
        reportedNoOfGeneralComplain(nullable: true,blank: true)
        reportedAmountOfGeneralComplain(nullable: true,blank: true)
        totalNoOfGeneralComplain(nullable: true,blank: true)
        totalAmountOfGeneralComplain(nullable: true,blank: true)
        amount(nullable: false,blank: false)
        auditInfoName(nullable: false,blank: false)
        sectionNumber(nullable: false,blank: false)
        complainDate(nullable: false,blank:false)
        auditFirm(nullable: false,blank:false)
        lgedOffice(nullable: false,blank:false)

    }
    String toString(){
        return auditInfoName
    }
}
