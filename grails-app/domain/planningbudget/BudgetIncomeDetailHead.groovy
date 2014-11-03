package planningbudget

class BudgetIncomeDetailHead {

    static mapping = {
        table("BUDGET_INCOME_DETAIL_HEAD")
        version(false)
        budgetIncomeMasterHead column: 'Budget_Income_Master_Head_ID'

    }
    Long id
    String detailHeadCode
    String detailHeadName
    planningbudget.BudgetIncomeMasterHead budgetIncomeMasterHead

    static constraints = {
        detailHeadName(nullable: false,unique: true)
        detailHeadName(nullable: false)

    }
    String toString(){
        return detailHeadName
    }
}
