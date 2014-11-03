package procurement.up

class Procurement_Type {
    static mapping = {
        table('PROCUREMENT_TYPE')
//        id generator:'sequence', params:[sequence:'procurementType_sequence']
        version(false)
    }
    long id
    String NAME

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        NAME(nullable: false)
        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return NAME
    }
}
