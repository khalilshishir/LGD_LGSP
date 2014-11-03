package grantmanagement

class PerformanceMeasureCategory {

    static mapping = {table("PERFORMANCE_MEASEURE_CATEGORY")}

    long id

    String categoryName
    String keyword

    static constraints = {
        categoryName(nullable: false, blank: false)
        keyword(nullable: false, blank: false)
    }
    String toString(){
        return categoryName
    }
}
