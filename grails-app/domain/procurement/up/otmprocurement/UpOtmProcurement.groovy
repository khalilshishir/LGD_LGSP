package procurement.up.otmprocurement

import settings.SchemeInfo

class UpOtmProcurement {

        static mapping = {
            table('UP_OTM_PROCUREMENT')
            version(false)
            upOtmProcurementDetails cascade: 'all'
        }
        long id
        SchemeInfo schemeInfo
        static hasMany = [upOtmProcurementDetails: UpOtmProcurementDetails]
        static constraints = {

}
}
