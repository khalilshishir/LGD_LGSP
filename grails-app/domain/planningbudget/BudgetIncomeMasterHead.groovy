package planningbudget

class BudgetIncomeMasterHead {
    static mapping = {
        table("BUDGET_INCOME_MASTER_HEAD")
        version(false)

    }
    Long id
    String masterHeadCode
    String masterHeadName

        static constraints = {
            masterHeadName(nullable: false,unique: true,blank: true)
            masterHeadCode(nullable: true,blank: true)
        }
    String toString(){
        return masterHeadName
    }
}
