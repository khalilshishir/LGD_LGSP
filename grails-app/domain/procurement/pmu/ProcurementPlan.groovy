package procurement.pmu
class ProcurementPlan {
    static mapping = {
        table('proc_pmu_PROCUREMENT')
        version(false)
        id column:'Pro_Id'
        perCode column:'Procurement_Code'
        perName column:'Procurement_Name'
        createdate column:'Create_Date'
        isActive column:'Is_active'
        createby column:'Create_by'
}
    Integer id
    String perCode
    String perName
    Date createdate = new Date()
    Boolean isActive
    String createby

   static constraints = {
       id(size:1..50)
       perCode(size:1..100,nullable:false)
       perName(size:1..100,nullable:false)
       createdate(nullable: true)
       isActive (nullable: false)
       createby(size: 1..100, nullable: true)
    }
    String toString(){
        return perName
    }
}
