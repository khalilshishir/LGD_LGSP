package grantmanagement

class PerformanceIndicator {
    static mapping = {
        table("PERFORMANCE_INDICATOR")
        version(false)

    }
    Long id
    String indicatorName
    PerformanceHead performanceHead
    Integer mark
    String performanceMeasure
    String meansOfVerification
    Integer slNo

    static constraints = {
        indicatorName(blank: false,nullable: false)
        performanceHead(nullable: false,blank:false)
        mark(nullable: false,blank:true)
        performanceMeasure(blank: true,nullable: true)
        meansOfVerification(blank: true,nullable: true)
        slNo(nullable: false,blank:true)
    }
    String toString(){
        return indicatorName
    }

}
