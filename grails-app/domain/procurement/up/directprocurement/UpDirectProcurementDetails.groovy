package procurement.up.directprocurement

import procurement.up.Up_Proc_Master

class UpDirectProcurementDetails {
    static mapping = {
        table 'UP_DIRECT_PROC_DETAILS'
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
    double ACTUAL_RATE
    double ACTUAL_AMOUNT
    double ACTUAL_TOTAL_PRICE

    Up_Proc_Master UP_PROC_MASTER_ID

    //static belongsTo = [Up_Proc_Master]
    static constraints = {
        GOODS_ID(nullable: false)
        GOODS_NAME(nullable: false)
        GOODS_DETAILS(nullable: false)
        RATE(nullable: true)
        AMOUNT(nullable: true)
        TOTAL_PRICE(nullable: true)
        ACTUAL_RATE(nullable: true)
        ACTUAL_AMOUNT(nullable: true)
        ACTUAL_TOTAL_PRICE(nullable: true)
    }
    String toString() {
        return "${GOODS_NAME}"
    }
}
