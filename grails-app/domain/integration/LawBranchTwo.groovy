package integration

class LawBranchTwo {
    static mapping = {
        table("LAW_BRANCH_2")
        version(false)

    }
    Long id
    String documentNo
    Date receiveDate
    String subject
    String departmentActivity
    Date endingDate
    String comments


    static constraints = {
        documentNo(nullable: false,blank: false)
        receiveDate(nullable: true,blank: true)
        subject(nullable: true, blank: true)
        departmentActivity(nullable: true,blank: true)
        endingDate(nullable: true,blank:true)
        comments(nullable: true,blank: true)
    }
}
