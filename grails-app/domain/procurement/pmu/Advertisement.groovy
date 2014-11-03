package procurement.pmu

class Advertisement {
    static mapping = {
        table('proc_pmu_adversite')
        version(false)
        id column:'add_Id'
        add_code column:'add_code'
        add_name column:'add_Name'
        createdate column:'Create_Date'
        isActive column:'Is_active'
        createby column:'Create_by'
    }
    Integer id
    String add_code
    String add_name
    Date createdate=new Date()
    Boolean isActive
    String createby

    static constraints = {
        id(size:1..50)
        add_code(size:1..100,nullable:false)
        add_name(size:1..100,nullable:false)
        createdate(nullable: true)
        isActive (nullable: false)
        createby(size: 1..100, nullable: true)
    }
    String toString(){
        return met_name
    }
}
