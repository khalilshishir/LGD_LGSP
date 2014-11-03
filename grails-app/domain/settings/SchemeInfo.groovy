package settings

import lookUp.AllLookup
import planningbudget.FiscalYear
import planningbudget.SchemeCategory

class SchemeInfo {
    static mapping = {
        table('SCHEME_INFO')
        version(false)
    }
    long id
    String SCHEME_ID
    String NAME
    String SCHEME_LOCATION
    UnionParishad UNION_PARISHAD
    SchemeType SCHEME_TYPE
    double GRANTED_AMOUNT       // estimatedAmount
    double RECEIVED_AMOUNT      // contractAmount
    String WORK_DESCRIPTION
    Date SCHEME_START_DATE = new Date()
    Date SCHEME_END_DATE = new Date()
    String IMPLEMENTATION_SYSTEM
    String RESPONSIBLE_PERSON
    Boolean IS_SELECTED_BY_WOMEN
    Boolean IMPLEMENTATION_STATUS
    Boolean IS_LABOUR_APPOINTED
    FiscalYear fiscalYear
    Boolean approvedByUp=Boolean.FALSE
    Boolean endorsedByBgcc=Boolean.FALSE
    String projectName
    SchemeCategory schemeCategory
    Double indicativeCeiling
    AllLookup typeOfLandBasedScheme
    String comments





    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        SCHEME_ID(nullable: false)
        NAME(nullable: false)
        SCHEME_LOCATION(nullable: false)
        UNION_PARISHAD(nullable: false)
        SCHEME_TYPE(nullable: false)
        GRANTED_AMOUNT(nullable: false)

        RECEIVED_AMOUNT(nullable: true)
        WORK_DESCRIPTION(nullable: true)
        SCHEME_START_DATE(nullable: true)
        SCHEME_END_DATE(nullable: true)
        IMPLEMENTATION_SYSTEM(nullable: true)
        RESPONSIBLE_PERSON(nullable: true)
        IS_SELECTED_BY_WOMEN(nullable: true)
        IMPLEMENTATION_STATUS(nullable: true)
        IS_LABOUR_APPOINTED(nullable: true)

        fiscalYear(nullable: true)
        approvedByUp(nullable: true)
        endorsedByBgcc(nullable: true)
        projectName(nullable: true)
        indicativeCeiling(nullable: true)
        typeOfLandBasedScheme(nullable: true)
        comments(nullable: true)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)

    }
    String toString(){
        return NAME
    }
}

