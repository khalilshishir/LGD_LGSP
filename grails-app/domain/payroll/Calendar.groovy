package payroll

class Calendar {
    static mapping = {
        table('HR_CALENDAR')
        version(false)
    }

    long id
    long HR_CALENDAR_ID
    String CALENDAR_YEAR
    long START_MONTH
    long END_MONTH

    static constraints = {
        HR_CALENDAR_ID(nullable: true)
        CALENDAR_YEAR(nullable: true)
        START_MONTH(nullable: true)
        END_MONTH(nullable: true)
    }
    String toString(){
        return HR_CALENDAR_ID
    }
}
