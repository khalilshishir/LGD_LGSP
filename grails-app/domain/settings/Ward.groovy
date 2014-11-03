package settings

class Ward {
    static mapping = {
        table('WARD')
        version(false)
    }
    long id
    Division division
    District district
    Upazila upazila
    UnionParishad unionParishad
    int WARD_NO

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        WARD_NO(nullable: false)
        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
}