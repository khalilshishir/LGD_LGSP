package grantmanagement

class MarkDstribution {
    static mapping = {
        table("PERFORMANCE_MARK_DISTRIBUTION")
        version(false)

    }
    Long id
    PerformanceHead performanceHead
    PerformanceIndicator performanceIndicator
    String rules
    Integer mark
    Integer slNo

    static constraints = {
        performanceHead(nullable: false,blank:false)
        performanceIndicator(nullable: false,blank:false)
        rules(nullable: false,blank: false)
        mark(nullable: false,blank:false)
        slNo(nullable: false,blank:false)
    }
    String toString(){
        return rules
    }
}
