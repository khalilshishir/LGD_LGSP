package grantmanagement

import settings.UnionParishad
import settings.Upazila

class DistributePBGAmount {
    static mapping = {
        table("DISTRIBUTE_AMOUNT_PBG")
        version(false)
    }

    long id
    planningbudget.FiscalYear fiscalYear
    DistributeBBGAmount distributeBBGAmount
    PerformanceMeasureCategory measureCategory
    UnionParishad unionParishad
    Upazila upazila
    AllocatedAmount allocatedAmount
    double amountPBG
    int percentage
    double totalAmount

    static constraints = {
        measureCategory(nullable: false, blank: false)
        fiscalYear(nullable: false,blank:false)
        unionParishad(nullable: false,blank:false)
        upazila(nullable: false,blank:false)
//        amountPrimaryBBG(nullable: false,blank:false)
//        amountAreaBBG(nullable: false,blank:false)
//        amountPopulationBBG(nullable: true,blank:true)
        allocatedAmount(nullable: false,blank:false)
        percentage(nullable:false,blank:false)
        amountPBG(nullable:false,blank:false)
        totalAmount(nullable:false,blank:false)
    }

}
