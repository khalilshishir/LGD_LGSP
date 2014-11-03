package settings

class UnionParishad {

    static mapping = {
        table('UNION_PARISHAD')
        version(false)
    }
    long id
    Division division
    District district
    Upazila upazila
    String UP_ID
    String UP_NAME

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        UP_ID(nullable: false)
        UP_NAME(nullable: false)
        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
}