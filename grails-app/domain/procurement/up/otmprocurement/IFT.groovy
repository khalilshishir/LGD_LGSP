package procurement.up.otmprocurement

import procurement.up.Up_Proc_Master

class IFT {
    static mapping = {
        table('IFT')
        version(false)
    }

    long id
    Up_Proc_Master UP_PROC_MASTER
    String IFT_NUMBER
    Date LAST_CONTACT_DATE = new Date()
    Date SUB_LAST_DATE = new Date()
    String SUB_LAST_TIME

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        IFT_NUMBER(nullable: false)
        LAST_CONTACT_DATE(nullable: false)
        SUB_LAST_DATE(nullable: false)
        SUB_LAST_TIME(nullable: false)
        UP_PROC_MASTER(nullable: false)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return id
    }

}
