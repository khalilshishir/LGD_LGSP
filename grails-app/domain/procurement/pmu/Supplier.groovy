package procurement.pmu

class Supplier {
        static mapping = {
            table('PROC_PMU_SUPPLIER')
            version(false)
}
    Integer id
    String SUPP_CODE
    String SUPP_NAME
    String SUPP_ADDRESS
    String FILE_UPLOAD
    Date CREATEDATE=new Date()
    Boolean ISACTIVE
    String CREATEBY

    static constraints = {
        id(size:1..50)
        SUPP_CODE(size:1..100,nullable:false)
        SUPP_NAME(size:1..100,nullable:false)
        SUPP_ADDRESS(size:1..100,nullable:false)
        FILE_UPLOAD(size:1..100,nullable:false)
        CREATEDATE(nullable: true)
        ISACTIVE (nullable: false)
        CREATEBY(size: 1..100, nullable: true)
    }
    String toString(){
        return SUPP_NAME
    }
}
