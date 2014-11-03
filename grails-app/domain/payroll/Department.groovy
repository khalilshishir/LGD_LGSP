package payroll

class Department {
    static mapping = {
        table('HR_DEPARTMENT')
        deptId column: 'DEPARTMENT_ID'
        deptName column: 'DEPARTMENT_NAME'
        is_active column: 'IS_ACTIVE'
        version(false)
    }
    long id
    String deptId
    String deptName
    Boolean is_active = Boolean.FALSE

    static constraints = {
        deptId(nullable: true)
        deptName(nullable: true)
        is_active(nullable: true)
    }

    String toString(){
        return deptName
    }
}
