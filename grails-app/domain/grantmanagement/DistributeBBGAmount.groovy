package grantmanagement

import settings.UnionParishad
import settings.Upazila

class DistributeBBGAmount {
    static mapping = {
        table("DISTRIBUTE_AMOUNT_BBG")
        version(false)
    }

    long id
    planningbudget.FiscalYear fiscalYear
//    PerformanceMeasureCategory measureCategory
    UnionParishad unionParishad
    Upazila upazila
    AllocatedAmount allocatedAmount
    double amountPrimaryBBG
    double amountAreaBBG
    double amountPopulationBBG
    double totalAmount

    static constraints = {
//        measureCategory(nullable: false, blank: false)
        fiscalYear(nullable: false,blank:false)
        unionParishad(nullable: false,blank:false)
        upazila(nullable: false,blank:false)
        amountPrimaryBBG(nullable: false,blank:false)
        amountAreaBBG(nullable: false,blank:false)
        amountPopulationBBG(nullable: true,blank:true)
        allocatedAmount(nullable: false,blank:false)
    }
}
