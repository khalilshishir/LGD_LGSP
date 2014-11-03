package grantmanagement

class PerformanceOrgType {
    static mapping = {
        table("PERFORMANCE_ORGANIZATION_TYPE")
        version(false)

    }
    Long id
    String orgName
    String keyword


    static constraints = {
        orgName(nullable: false, blank: false,unique: true)
        keyword(nullable: false,blank: false,unique: true)
    }
    String toString(){
        return orgName
    }
}
