package procurement.up.communityprocurement

import procurement.up.Up_Proc_Master

class MasterRoleSalary {
    static mapping = {
        table('MASTER_ROLE_SALARY')
        version(false)
        masterRoleSalaryDetails cascade: 'all'
    }

    long id
//    Up_Proc_Master UP_PROCUREMENT_MASTER
    Up_Proc_Master upProcMaster

    long CREATED_BY = 0
    Date CREATED_DATE = new Date()
    long UPDATED_BY = 0
    Date UPDATED_DATE = new Date()

    static hasMany = [masterRoleSalaryDetails: MasterRoleSalaryDetails]

    static constraints = {
//        UP_PROCUREMENT_MASTER(nullable: false)
        upProcMaster(nullable: false)

        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
}
