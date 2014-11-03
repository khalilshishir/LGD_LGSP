package payroll

import lookUp.AllLookup

class Attendance_Process {
    static mapping = {
        table('HR_ATTENDANCE_PROCESS')
        version(false)
    }
    Long id
    String ATTN_MONTH
    String ATTN_YEAR
    String EMPLOYEE_ID
    String CARD_NO
    Employee EMPLOYEE_NAME
    Department DEPARTMENT_ID
    Designation DESIGNATION_ID
    Date JOINING_DATE=new Date()
    Long EARNED_LEAVE
    Long SICK_LEAVE
    Long MATERNITY_LEAVE
    Long CASUAL_LEAVE
    Long SACTIONAL_LEAVE
    Long STUDY_LEAVE
    Long LEAVE_WITHOUT_PAY
    Long MONTHLY_HOLIDAY

    static constraints = {
        ATTN_MONTH(nullable: true)
        ATTN_YEAR(nullable: true)
        EMPLOYEE_ID(nullable: true)
        CARD_NO(nullable: true)
        EMPLOYEE_NAME(nullable: true)
        DEPARTMENT_ID(nullable: true)
        DESIGNATION_ID(nullable: true)
        JOINING_DATE(nullable: true)
        EARNED_LEAVE(nullable: true)
        SICK_LEAVE(nullable: true)
        MATERNITY_LEAVE(nullable: true)
        CASUAL_LEAVE(nullable: true)
        SACTIONAL_LEAVE(nullable: true)
        STUDY_LEAVE(nullable: true)
        LEAVE_WITHOUT_PAY(nullable: true)
        MONTHLY_HOLIDAY(nullable: true)
    }
}
