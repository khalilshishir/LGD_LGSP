package payroll

import lookUp.AllLookup

class Employee_Leave {
    static mapping = {
        table('HR_EMPLOYEE_LEAVE')
        version(false)
    }
    Long id
    Employee EMPLOYEE_ID
    String CARD_NO
    Date APPLICATION_DATE=new Date()
    AllLookup LEAVE_TYPE_ID
    Date START_DATE=new Date()
    Date END_DATE=new Date()
    Long TOTAL_DAYS
    String LEAVE_REASON
    String REMARKS
    Long LEAVE_BALANCE
    Long LEAVE_WITH_PAY_DAYS
    Long LEAVE_WITHOUT_PAY_DAYS
    static constraints = {
        EMPLOYEE_ID(nullable: true)
        CARD_NO(nullable: true)
        APPLICATION_DATE(nullable: true)
        LEAVE_TYPE_ID(nullable: true)
        START_DATE(nullable: true)
        END_DATE(nullable: true)
        TOTAL_DAYS(nullable: true)
        LEAVE_REASON(nullable: true,size: 1..400)
        REMARKS(nullable: true,size: 1..400)
        LEAVE_BALANCE(nullable: true)
        LEAVE_WITH_PAY_DAYS(nullable: true)
        LEAVE_WITHOUT_PAY_DAYS(nullable: true)


    }

}
