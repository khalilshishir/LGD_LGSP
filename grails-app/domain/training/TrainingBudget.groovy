package training

import settings.UnionParishad

class TrainingBudget {

    static mapping = {
        table('TR_TRAINING_BUDGET')
        version(false)
    }
    Long id
    String TRAINING_BUDGET_ID
    Double TRAINING_BUDGET_AMOUNT
    Double TRAINING_BUDGET_AMOUNT_BN
    UnionParishad UNION_PARISHAD

    Date TR_BUDGET_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TRAINING_BUDGET_ID(nullable: false)
        TRAINING_BUDGET_AMOUNT(nullable: false)
        TRAINING_BUDGET_AMOUNT_BN(nullable: true)
        UNION_PARISHAD(nullable: false)
        TR_BUDGET_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }
    String toString(){
        return TRAINING_BUDGET_ID
    }
}
