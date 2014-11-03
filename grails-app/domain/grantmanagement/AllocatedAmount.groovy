package grantmanagement

import java.text.DecimalFormat

class AllocatedAmount {
    static mapping = {
        table("ALLOCATED_AMOUNT")
        version(false)
    }

    long id
    planningbudget.FiscalYear fiscalYear
    double allocatedAmount

    static constraints = {
        allocatedAmount(nullable: false, blank: false)
        fiscalYear(nullable: false,blank:false)
    }
    String toString(){
        def pattern = "#####.##"
        def moneyform = new DecimalFormat(pattern)
        String output = moneyform.format(allocatedAmount)
        return output
    }
}
