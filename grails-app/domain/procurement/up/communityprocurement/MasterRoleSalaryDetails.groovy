package procurement.up.communityprocurement

class MasterRoleSalaryDetails {
    static mapping = {
        table 'MASTER_ROLE_SALARY_DETAILS'
        // version is set to false, because this isn't available by default for legacy databases
        version(false)
    }
    long id
    String LABOUR_NAME
    String LABOUR_ADDRESS
    double SALARY
    double WORK_DAY
    double TOTAL_AMOUNT
    String COMMENTS

//    MasterRoleSalary MASTER_ROLE_SALARY
    MasterRoleSalary masterRoleSalary

    //static belongsTo = [Up_Proc_Master]
    static constraints = {
        LABOUR_NAME(nullable: false)
        LABOUR_ADDRESS(nullable: false)
        SALARY(nullable: false)
        WORK_DAY(nullable: false)
        TOTAL_AMOUNT(nullable: false)
        COMMENTS(nullable: false)
//        MASTER_ROLE_SALARY(nullable: false)
        masterRoleSalary(nullable: false)
    }

    String toString() {
        return "${LABOUR_NAME}"
    }
}
