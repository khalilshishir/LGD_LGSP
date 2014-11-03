package planningbudget

class FiscalYear {
    static mapping = {
        table("FISCAL_YEAR")
        version(false)
        startYear column: 'START_YEAR'
        endYear column: 'END_YEAR'
    }
    Long id
    String name
    Date startYear
    Date endYear
    String fiscalYear

    static constraints = {
        name(nullable: false, blank: false)
        startYear(nullable: false,blank:false)
        endYear(nullable: false,blank:false)
    }
    
    String toString(){
        return fiscalYear
    }
}
