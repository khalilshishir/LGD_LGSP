package training

class TrainerCategory {

    static mapping = {
        table('TR_TRAINER_CATEGORY')
        version(false)
    }

    Long id
    String TRAINER_CATEGORY_ID
    String TRAINER_CATEGORY_NAME
    String TRAINER_CATEGORY_NAME_BN

    Date TR_CATE_ENTRY_DATE = new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Date CREATE_DATE=new Date()
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATED_DATE = new Date()

    static constraints = {
        TRAINER_CATEGORY_ID(nullable: false)
        TRAINER_CATEGORY_NAME(nullable: false)
        TRAINER_CATEGORY_NAME_BN(nullable: false)

        TR_CATE_ENTRY_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_DATE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATED_DATE(nullable: false)
    }

    String toString(){
        return TRAINER_CATEGORY_NAME
    }
}
