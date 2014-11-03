package payroll

class Monthly_Salary_Process {

    static mapping = {
        table('MONTHLY_SALARY_PROCESS')
        version(false)
    }

    long id
    String SALARY_MONTH
    String MONTH_NAME
    long YEAR_NAME
    Employee EMPLOYEE_ID
    String CARD_NO
    Department DEPARTMENT_ID
    Designation DESIGNATION_ID
    String BANK_NAME
    String BANK_ACCOUNT_NO
    float BASIC_SALARY
    float HOUSE_RENT
    float CONVEYANCE
    float MEDICAL
    float WASHING
    float DEARNESS
    float PF_OWN
    float SPECIAL_ALLOWANCE
    float SPECIAL_ALLOWANCE_DA
    float INCOME_TAX
    float ADVANCE
    float OTHER_DEDUCTION
    String SALARY_TYPE
    String STATUS
    long ACCOUNTING
    long BANK_ID
    long BANK_BRANCH_ID
    String AFM_ACCOUNT_NO
    long ACCOUNT_HEAD_ID
    String PAYMENT_DESC
    String IS_VOUCHER
    long VOUCHER_ID
    long ACCOUNTING_INFO_ID

    static constraints = {
        SALARY_MONTH(nullable: true)
        MONTH_NAME(nullable: true)
        YEAR_NAME(nullable: true)
        EMPLOYEE_ID(nullable: true)
        CARD_NO(nullable: true)
        DEPARTMENT_ID(nullable: true)
        DESIGNATION_ID(nullable: true)
        BANK_NAME(nullable: true)
        BANK_ACCOUNT_NO(nullable: true)
        BASIC_SALARY(nullable: true)
        HOUSE_RENT(nullable: true)
        CONVEYANCE(nullable: true)
        MEDICAL(nullable: true)
        WASHING(nullable: true)
        DEARNESS(nullable: true)
        PF_OWN(nullable: true)
        SPECIAL_ALLOWANCE(nullable: true)
        SPECIAL_ALLOWANCE_DA(nullable: true)
        INCOME_TAX(nullable: true)
        ADVANCE(nullable: true)
        OTHER_DEDUCTION(nullable: true)
        SALARY_TYPE(nullable: true)
        STATUS(nullable: true)
        ACCOUNTING(nullable: true)
        BANK_ID(nullable: true)
        BANK_BRANCH_ID(nullable: true)
        AFM_ACCOUNT_NO(nullable: true)
        ACCOUNT_HEAD_ID(nullable: true)
        PAYMENT_DESC(nullable: true)
        IS_VOUCHER(nullable: true)
        VOUCHER_ID(nullable: true)
        ACCOUNTING_INFO_ID(nullable: true)
    }
    String toString(){
        return EMPLOYEE_ID
    }
}
