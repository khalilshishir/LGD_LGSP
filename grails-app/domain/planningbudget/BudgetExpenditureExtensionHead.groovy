package planningbudget

class BudgetExpenditureExtensionHead {

    static mapping = {
    table("BUDGET_EXPENSE_EXT_HEAD")
        budgetExpenditureMasterHead column: 'BUDGET_EXP_MASTER_HEAD_ID'
    version(false)
}

    Long id
    String extensionHeadCode
    String extensionHeadName
    BudgetExpDetailHead budgetExpDetailHead
    planningbudget.BudgetExpenditureMasterHead budgetExpenditureMasterHead
//    detailHeadDescriptionID
//    detailHeadDescriptionName


    static constraints = {
        extensionHeadName(nullable: false, unique: true,blank: true)
        extensionHeadCode(nullable: true, blank: true)
    }
}

