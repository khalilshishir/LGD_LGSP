package procurement.pmu

class Sales_Tender {
    static mapping ={
        table('PROC_PMU_TENDER')
        version(false)
    }
    Integer id
    String SALES_TENDER_CODE
    String TENDER_NAME
    String PROCURE_NAME
    String FILE_UPLOAD
    String PUBLISHED_DATE
    String REMARKS
    Date CREATEDATE=new Date()
    boolean ISACTIVE
    String CREATEBY
    static constraints = {
        id(size:1..50)
        SALES_TENDER_CODE (size:1..100,nullable:false)
        TENDER_NAME(size:1..100,nullable:false)
        PROCURE_NAME(size:1..100,nullable:false)
        FILE_UPLOAD (size:1..100,nullable:false)
        PUBLISHED_DATE  (nullable: true)
        REMARKS (size:1..100,nullable:false)
        CREATEDATE (nullable: true)
        ISACTIVE (nullable: false)
        CREATEBY (size: 1..100, nullable: true)
    }
    String toString(){
        return TENDER_NAME
    }
}
