package planningbudget

class SchemeName {
    static mapping = {
        table("SCHEME_NAME")
        version(false)
    }

    long id

    settings.UnionParishad unionParishad
    settings.Ward ward
    planningbudget.FiscalYear fiscalYear

    String schemeName
    SchemeApprovalStatus approvalStatus
//    Boolean isApproved

    static constraints = {
        unionParishad(nullable: false, blank:false)
        ward(nullable: false, blank:false)
        fiscalYear(nullable: false, blank:false)
        schemeName(nullable: false, blank:false)
        approvalStatus(nullable: true, blank:true)
    }
    String toString(){
        return schemeName
    }
}
