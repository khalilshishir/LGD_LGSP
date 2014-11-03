package planningbudget

class BudgetExpDetailHead {
    static mapping = {
        table("BUDGET_EXP_DETAIL_HEAD")
        version(false)
        budgetExpenditureMasterHead column: 'Budget_Exp_Master_Head_ID'

    }
    Long id
    String detailHeadCode
    String detailHeadName
    planningbudget.BudgetExpenditureMasterHead budgetExpenditureMasterHead

    static constraints = {
        detailHeadName(nullable: false,unique: true)
        detailHeadName(nullable: false)

    }
    String toString(){
        return detailHeadName
    }
}
