package grantmanagement

class PerformanceHead {
    static mapping = {
        table("PERFORMANCE_HEAD")
        version(false)

    }

    Long id
    String headName
    Integer mark
    PerformanceOrgType organiztionType
    Integer slNo
    static constraints = {
        headName(blank: false,nullable: false)
        mark(nullable: false,blank:false)
        organiztionType(nullable: false,blank:false)
        slNo(nullable: false,blank:false)

    }
    String toString(){
        return headName
    }
}
