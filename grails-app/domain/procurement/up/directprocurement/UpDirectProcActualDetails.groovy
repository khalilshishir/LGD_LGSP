package procurement.up.directprocurement

class UpDirectProcActualDetails {

    static mapping = {
        table 'UP_DIR_PROC_ACTUAL_DETAILS'
        // version is set to false, because this isn't available by default for legacy databases
        version false
    }
    Long id
    String GOODS_ID
    String GOODS_NAME
    String GOODS_DETAILS
    double RATE
    double AMOUNT
    double TOTAL_PRICE
    UpDirectProc UP_DIRECT_PROC_ACTUAL

    //static belongsTo = [Up_Proc_Master]
    long CREATED_BY = 0
    Date CREATED_DATE = new Date()
    long UPDATED_BY = 0
    Date UPDATED_DATE = new Date()
    boolean IS_ACTIVE=Boolean.TRUE
    static constraints = {
        GOODS_ID(nullable: false)
        GOODS_NAME(nullable: false)
        GOODS_DETAILS(nullable: false)
        RATE(nullable: false)
        AMOUNT(nullable: false)
        UP_DIRECT_PROC_ACTUAL(nullable: false)

        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }

    String toString() {
        return "${GOODS_NAME}"
    }
}
