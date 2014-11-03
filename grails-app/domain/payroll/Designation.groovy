package payroll

class Designation {
    static mapping = {
        table('HR_DESIGNATION')
        version(false)
    }
    long id
    String DESIGNATION_ID
    String DESIGNATION_NAME
    Boolean IS_ACTIVE = Boolean.FALSE

    static constraints = {
        DESIGNATION_ID(nullable: true)
        DESIGNATION_NAME(nullable: true)
        IS_ACTIVE(nullable: true)
    }

    String toString(){
        return DESIGNATION_NAME
    }
}
