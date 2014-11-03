package payroll

class Payscale {

    static mapping = {
        table('HR_PAYSCALE')
        version(false)
    }

    long id
    long PAYSCALE_ID
    String GRADE_NO
    Designation DESIGNATION_ID

    static constraints = {
        PAYSCALE_ID(nullable: true)
        GRADE_NO(nullable: true)
        DESIGNATION_ID(nullable: true)
    }
    String toString(){
        return PAYSCALE_ID
    }
}
