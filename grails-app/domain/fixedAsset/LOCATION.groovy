package fixedAsset
import settings.Division
import settings.District
import settings.Upazila

class LOCATION {
    static mapping = {
        table('FA_LOCATION')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    String LOCATION_NAME
    String LOCATION_ADDRESS
    Division DIVISION_ID
    District DISTRICT_ID
    Upazila UPAZILLA_ID
    String REMARKS
    static constraints = {
        LOCATION_NAME(nullable: true)
        LOCATION_ADDRESS(nullable: true)
        DIVISION_ID(nullable: true)
        DISTRICT_ID(nullable: true)
        UPAZILLA_ID(nullable: true)
        REMARKS(nullable: true)
    }
    String toString(){
        return LOCATION_NAME
    }
}
