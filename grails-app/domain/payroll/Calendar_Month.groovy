package payroll

class Calendar_Month {
    static mapping = {
        table('HR_CALENDAR_MONTH')
        version(false)
    }

    long id
    long HR_CALENDAR_MONTH_ID
    Date START_DATE = new Date()
    Date END_DATE = new Date()
    String PERIOD_NAME
    long HR_CALENDAR_ID
    long CALENDAR_YEAR
    long SERIAL_NO
    long IS_SALARY_PROCESS
    long IS_INCREMENT_PROCESS
    long IS_BONUS_PROCES

    static constraints = {
        HR_CALENDAR_MONTH_ID(nullable: true)
        START_DATE(nullable: true)
        END_DATE(nullable: true)
        PERIOD_NAME(nullable: true)
        HR_CALENDAR_ID(nullable: true)
        CALENDAR_YEAR(nullable: true)
        SERIAL_NO(nullable: true)
        IS_SALARY_PROCESS(nullable: true)
        IS_INCREMENT_PROCESS(nullable: true)
        IS_BONUS_PROCES(nullable: true)
    }
    String toString(){
        return HR_CALENDAR_MONTH_ID
    }
}
