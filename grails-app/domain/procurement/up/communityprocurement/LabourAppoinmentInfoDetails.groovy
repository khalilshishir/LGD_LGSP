package procurement.up.communityprocurement

class LabourAppoinmentInfoDetails {
    static mapping = {
        table 'LABOUR_APPOIN_INFO_DETAILS'
        // version is set to false, because this isn't available by default for legacy databases
        version false
    }
    long id
    String WORK_DETAILS
    double WORK_RATE
    double WORK_AMOUNT
    double LABOUR_AMOUNT
    double PER_WORK_DAY_RATE
    double WORK_DAY_TOTAL_AMOUNT
    String COMMENTS

    long CREATED_BY = 0
    Date CREATED_DATE = new Date()
    long UPDATED_BY = 0
    Date UPDATED_DATE = new Date()

    LabourAppoinmentInfo LABOUR_APPOINTMENT_INFO

    //static belongsTo = [Up_Proc_Master]
    static constraints = {
        WORK_DETAILS(nullable: false)
        WORK_RATE(nullable: false)
        WORK_AMOUNT(nullable: false)
        LABOUR_AMOUNT(nullable: false)
        PER_WORK_DAY_RATE(nullable: false)
        WORK_DAY_TOTAL_AMOUNT(nullable: false)
        COMMENTS(nullable: false)
        LABOUR_APPOINTMENT_INFO(nullable: false)

        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }

    String toString() {
        return "${WORK_DAY_TOTAL_AMOUNT}"
    }
}
