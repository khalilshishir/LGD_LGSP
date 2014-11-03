package procurement.up.rfqprocurement

import procurement.up.Up_Proc_Master

class UpRFQProcWorkOrder {

    static mapping = {
        table('UP_RFQ_PROC_WORK_ORDER')
        version(false)
    }

    Up_Proc_Master UP_PROC_MASTER
    long id
    String  RECEIVED_COMPANY
    String COMPANY_ADDRESS
    boolean IS_SIGN_CONTRACT=Boolean.FALSE

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()
    boolean IS_ACTIVE=Boolean.TRUE
    static constraints = {
        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
        RECEIVED_COMPANY(nullable: false)
        COMPANY_ADDRESS(nullable: true)
    }
    String toString(){
        return RECEIVED_COMPANY
    }

}