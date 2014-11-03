package procurement.up.rfqprocurement

import procurement.up.Up_Proc_Master

class UpRfqOpeningSheet {
    static mapping = {
        table('UP_RFQ_OPENING_SHEET')
        version(false)
        upRfqOpeningSheetDetails cascade: 'all'
    }
    long id
    Up_Proc_Master UP_PROC_MASTER
    Date INVITATION_DATE = new Date()
    Date SUB_LAST_DATE = new Date()
    Date OPENING_DATE = new Date()

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()
    static hasMany = [upRfqOpeningSheetDetails: UpRfqOpeningSheetDetails]
    static constraints = {
        UP_PROC_MASTER(nullable: false)
        INVITATION_DATE(nullable: false)
        SUB_LAST_DATE(nullable: false)
        OPENING_DATE(nullable: false)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return id
    }

}
