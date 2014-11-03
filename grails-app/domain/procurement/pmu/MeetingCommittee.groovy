package procurement.pmu

class MeetingCommittee {
    static mapping = {
        table('proc_pmu_MEETing')
        version(false)
        id column:'meet_Id'
        meeting_code column:'Meeting_code'
        met_name column:'Meeting_Name'
        createdate column:'Create_Date'
        isActive column:'Is_active'
        createby column:'Create_by'
    }
    Integer id
    String meeting_code
    String met_name
    Date createdate=new Date()
    Boolean isActive
    String createby
    
    static constraints = {
        id(size:1..50)
        meeting_code(size:1..100,nullable:false)
        met_name(size:1..100,nullable:false)
        createdate(nullable: true)
        isActive (nullable: false)
        createby(size: 1..100, nullable: true)
    }
    String toString(){
        return met_name
    }
}
