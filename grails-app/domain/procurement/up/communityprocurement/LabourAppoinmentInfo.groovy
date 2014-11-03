package procurement.up.communityprocurement

import procurement.up.Up_Proc_Master

class LabourAppoinmentInfo {
    static mapping = {
        table('LABOUR_APPOINMENT_INFO')
        version(false)
        labourAppoinmentInfoDetails cascade: 'all'
    }

    long id
    Up_Proc_Master UP_PROCUREMENT_MASTER

    long CREATED_BY = 0
    Date CREATED_DATE = new Date()
    long UPDATED_BY = 0
    Date UPDATED_DATE = new Date()

    static hasMany = [labourAppoinmentInfoDetails: LabourAppoinmentInfoDetails]

    static constraints = {
        UP_PROCUREMENT_MASTER(nullable: false)

        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
}
