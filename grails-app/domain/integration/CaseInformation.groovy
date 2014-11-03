package integration

class CaseInformation {
    static mapping = {
        table("CASE_INFORMATION")
        version(false)

    }
    Long id
    String caseNo
    Date caseDate
    Date receiveDate
    String documentNo
    String caseSubject
    CourtType courtType
    String partyName
    String lawActivity
    String departmentActivity
    String administrativeActivity
    Date answerDate
    Date hearingDate
    String lastSituation
    String comments

    static constraints = {
        caseNo(nullable: false,unique: true)
        caseDate(nullable: true,blank: true)
        receiveDate(nullable: true,blank: true)
        documentNo(nullable: true,blank: true)
        caseSubject(nullable: true,blank: true)
        courtType(nullable: false,blank: false)
        partyName(nullable: true,blank: true)
        lawActivity(nullable: true,blank: true)
        departmentActivity(nullable: true,blank: true)
        administrativeActivity(nullable: true,blank: true)
        answerDate(nullable: true,blank: true)
        hearingDate(nullable: true,blank: true)
        lastSituation(nullable: true,blank: true)
        comments(nullable: true,blank: true)

    }
}
