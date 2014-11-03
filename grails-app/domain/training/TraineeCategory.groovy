package training

class TraineeCategory {

    static mapping = {
        table('TR_TRAINEE_CATEGORY')
        version(false)
    }
    Long id
    String TRAINEE_CATEGORY_ID
    String TRAINEE_CATEGORY_NAME
    String TRAINEE_CATEGORY_NAME_BN
    Long NO_OF_TRAINEE_QUANTITY
    Long NO_OF_TRAINEE_QUANTITY_BN

    Date TR_CATE_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TRAINEE_CATEGORY_ID(nullable: false)
        TRAINEE_CATEGORY_NAME(nullable: false)
        TRAINEE_CATEGORY_NAME_BN(nullable: true)
        NO_OF_TRAINEE_QUANTITY(nullable: false)
        NO_OF_TRAINEE_QUANTITY_BN(nullable: true)
        TR_CATE_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }
    String toString(){
        return TRAINEE_CATEGORY_NAME
    }
}
