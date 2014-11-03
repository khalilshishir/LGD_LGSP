package settings

class Committee {

    static mapping = {
        table('COMMITTEE')
        version(defaultValue: 0)
        committeeMember cascade: 'all'
    }

    CommitteeLevel COMMITTEE_LEVEL
    long id
    String COMMITTEE_ID
    String COMMITTEE_NAME
    Division DIVISION
    District DISTRICT
    Upazila UPAZILA
    UnionParishad UNION_PARISHAD
    Ward WARD
    int NO_OF_MEMBER // childcount

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static hasMany = [committeeMember: CommitteeMember]

    static constraints = {
        COMMITTEE_ID(nullable: false)
        COMMITTEE_NAME(nullable: false)
        DIVISION(nullable: false)
        DISTRICT(nullable: false)
        UPAZILA(nullable: false)
        UNION_PARISHAD(nullable: false)
        WARD(nullable: false)
        NO_OF_MEMBER(nullable: false)
        COMMITTEE_LEVEL(nullable: false)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }

    String toString(){
        return COMMITTEE_NAME
    }
}
