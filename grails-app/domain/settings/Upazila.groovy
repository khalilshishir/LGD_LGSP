package settings

class Upazila {

    static mapping = {
        table('UPAZILA')
        version(false)
    }
    long id
    Division division
    District district
    String UPZ_ID
    String UPZ_NAME

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        UPZ_ID(nullable: false)
        UPZ_NAME(nullable: false)
        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return UPZ_NAME
    }
}