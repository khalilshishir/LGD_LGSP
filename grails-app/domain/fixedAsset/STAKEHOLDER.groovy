package fixedAsset

import settings.Division
import settings.District
import settings.Upazila

class STAKEHOLDER {

    static mapping = {
        table('FA_STAKEHOLDER')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    String STAKEHOLDER_NAME
    String STAKEHOLDER_ADDRESS
    String EMAIL
    Division DIVISION_ID
    District DISTRICT_ID
    Upazila UPAZILLA_ID
    String REMARKS
    static constraints = {
        STAKEHOLDER_NAME(nullable: true)
        STAKEHOLDER_ADDRESS(nullable: true)
        EMAIL(nullable: true,email: true)
        DIVISION_ID(nullable: true)
        DISTRICT_ID(nullable: true)
        UPAZILLA_ID(nullable: true)
        REMARKS(nullable: true)
    }
    String toString(){
        return STAKEHOLDER_NAME
    }
}
