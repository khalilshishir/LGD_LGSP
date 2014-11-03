package settings

class District {
    static mapping = {
        table('DISTRICT')
        version(false)
    }
    long id
    Division division
    String DIS_ID
    String DIS_NAME

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        DIS_ID(nullable: false)
        DIS_NAME(nullable: false)
        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return DIS_NAME
    }
}
