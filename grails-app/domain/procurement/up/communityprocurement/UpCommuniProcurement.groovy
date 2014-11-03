package procurement.up.communityprocurement

import settings.SchemeInfo

class UpCommuniProcurement {

    static mapping = {
        table('UP_COMMU_PROCUREMENT')
        version(false)
        upCommuniProcurementDetails cascade: 'all'
    }


    long id
    SchemeInfo schemeInfo
    static hasMany = [upCommuniProcurementDetails: UpCommuniProcurementDetails]
    static constraints = {

    }
}

