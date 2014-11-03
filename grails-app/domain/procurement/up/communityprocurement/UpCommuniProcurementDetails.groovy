package procurement.up.communityprocurement

class UpCommuniProcurementDetails {

    static mapping = {
        table 'UP_COMMU_PROC_DETAILS'
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


    UpCommuniProcurement upCommuniProcurement

    static constraints = {
        GOODS_ID(nullable: false)
        GOODS_NAME(nullable: false)
        GOODS_DETAILS(nullable: false)
        RATE(nullable: true)
        AMOUNT(nullable: true)
        TOTAL_PRICE(nullable: true)

    }
    String toString() {
        return "${GOODS_NAME}"
    }
}