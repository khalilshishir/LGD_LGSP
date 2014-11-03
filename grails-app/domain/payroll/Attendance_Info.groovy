package payroll

class Attendance_Info {
    static mapping = {
        table('HR_ATTN_INFO')
        version(false)
    }
    Long id
    String FILE_NAME
    String ROW_DATA
    String TERMINAL_ID
    String DAY
    String MONTH
    String HOUR
    String MINUTE
    String SECOND
    String CARD_NO
    String YEAR
//    Long HR_MIN_SEC


    static constraints = {
        FILE_NAME(nullable: true)
        ROW_DATA(nullable: true)
        TERMINAL_ID(nullable: true)
        DAY(nullable: true)
        MONTH(nullable: true)
        HOUR(nullable: true)
        MINUTE(nullable: true)
        SECOND(nullable: true)
        CARD_NO(nullable: true)
        YEAR(nullable: true)
//        HR_MIN_SEC(nullable: true)

    }
}
