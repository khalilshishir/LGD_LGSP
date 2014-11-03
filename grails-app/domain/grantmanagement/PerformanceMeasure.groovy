package grantmanagement

import planningbudget.FiscalYear
import settings.UnionParishad
import settings.Upazila

class PerformanceMeasure {
    static mapping = {
        table("PERFORMANCE_MEASURE")
        version(false)

    }
    Long id
    PerformanceMeasureCategory measureCategory
    Upazila upazila
    UnionParishad unionParishad
    Integer mark
    String remark
    FiscalYear fiscalYear

    static constraints = {
        measureCategory(nullable: false,blank:false)
        unionParishad(nullable: false,blank:false)
        remark(nullable: true,blank: true)
        fiscalYear(nullable: false,blank:true)
        upazila(nullable: false,blank:false)
    }
//    String toString(){
//        return indicatorName
//    }
}
