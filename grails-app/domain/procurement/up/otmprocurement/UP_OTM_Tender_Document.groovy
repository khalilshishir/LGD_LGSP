package procurement.up.otmprocurement

import procurement.up.Up_Proc_Master

class UP_OTM_Tender_Document {
    static mapping = {
        table('UP_OTM_TENDER_DOCUMENT')
        version(false)
    }
    long id
    Up_Proc_Master UP_PROC_MASTER
    Date TASK_COMP_LAST_DATE = new Date()
    int NO_OF_ACTIVATION_DAY
    Date TENDER_SUB_LAST_DATE = new Date()
    String TENDER_SUB_LAST_TIME
    Date TENDER_OPENING_DATE = new Date()

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()
    static constraints = {
        UP_PROC_MASTER(nullable: false)
        TASK_COMP_LAST_DATE(nullable: false)
        NO_OF_ACTIVATION_DAY(nullable: false)
        TENDER_SUB_LAST_DATE(nullable: false)
        TENDER_SUB_LAST_TIME(nullable: false)
        TENDER_OPENING_DATE(nullable: false)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return id
    }

}
