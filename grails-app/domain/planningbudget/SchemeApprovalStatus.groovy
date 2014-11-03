package planningbudget

class SchemeApprovalStatus {

    static mapping = {
        table('SCHEME_APPROVAL_STATUS')
        version(false)

    }

    long id
    String keyWard
    String statusName

    static constraints = {
        keyWard(nullable: false,unique: true)
        statusName(nullable: false,unique: true)
    }
    String toString(){
        return statusName
    }
}
