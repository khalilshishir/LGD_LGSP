package procurement.up.rfqprocurement

import settings.SchemeInfo

class UpRfqProcurement {

    static mapping = {
        table('UP_RFQ_PROCUREMENT')
        version(false)
        upRfqProcurementDetails cascade: 'all'
    }
    long id
    SchemeInfo schemeInfo
    static hasMany = [upRfqProcurementDetails: UpRfqProcurementDetails]
    static constraints = {

    }
}
