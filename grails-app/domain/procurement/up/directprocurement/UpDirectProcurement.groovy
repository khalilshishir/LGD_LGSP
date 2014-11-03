package procurement.up.directprocurement

import settings.SchemeInfo

class UpDirectProcurement {
    static mapping = {
        table('UP_DIRECT_PROCUREMENT')
        version(false)
        upDirectProcDetails cascade: 'all'
    }


    long id
    SchemeInfo schemeInfo
    static hasMany = [upDirectProcDetails: UpDirectProcDetails]
    static constraints = {

    }
}
