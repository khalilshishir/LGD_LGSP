package grantmanagement

import settings.UnionParishad
import settings.Upazila

class DistributedAmount {
    static mapping = {
        table("DISTRIBUTE_AMOUNT_UNION")
        version(false)
    }

    long id
    planningbudget.FiscalYear fiscalYear
    PerformanceMeasureCategory measureCategory
    UnionParishad unionParishad
    Upazila upazila
    AllocatedAmount allocatedAmount
    double amountBBG
    double amountPBG
    double totalAmount

    static constraints = {
        measureCategory(nullable: false, blank: false)
        fiscalYear(nullable: false,blank:false)
        unionParishad(nullable: false,blank:false)
        upazila(nullable: false,blank:false)
        amountBBG(nullable: false,blank:false)
        amountPBG(nullable: false,blank:false)
        totalAmount(nullable: true,blank:true)
        allocatedAmount(nullable: false,blank:false)
    }
}
