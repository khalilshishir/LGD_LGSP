package grantmanagement

import planningbudget.FiscalYear
import settings.District
import settings.Division
import settings.UnionParishad
import settings.Upazila

class UnionPorishodPerformanceEntry {
    static mapping = {
        table('PERFORMANCE_ENTRY')
        version(false)
    }
    Long id
    PerformanceOrgType organiztionType
    PerformanceHead performanceHead
    PerformanceIndicator performanceIndicator
    MarkDstribution markDstribution
    Division division
    District district
    Upazila upazila
    UnionParishad unionParishad

    FiscalYear fiscalYear
    Integer obtainMark


    static constraints = {
        organiztionType(nullable: false,blank:false)
        performanceHead(nullable: false,blank:false)
        performanceIndicator(nullable: false,blank:false)
        markDstribution(nullable: true,blank:true)
        division(nullable: false,blank:false)
        district(nullable: false,blank:false)
        obtainMark(nullable: false,blank:false)
        fiscalYear(nullable: false,blank:false)
        unionParishad(nullable: false,blank:false)
        upazila(nullable: false,blank:false)
    }

}
