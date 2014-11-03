package settings

class Division {

    static mapping = {
        table('DIVISION')
        version(false)
    }
    long id
   String DIV_ID
   String DIV_NAME

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        DIV_ID(nullable: false)
        DIV_NAME(nullable: false)
        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return DIV_NAME
    }

}
