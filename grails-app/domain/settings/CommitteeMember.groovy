package settings

class CommitteeMember {

    static mapping = {
        table('COMMITTEE_MEMBER')
        version(false)
    }

    long id
    Committee COMMITTEE
    String MEMBER_NAME
    MemberDesignation MEMBER_DESIGNATION
    String MEMBER_ADDRESS
    String MOBILE_NO
    String EMAIL_ADDRESS
    String NATIONAL_ID_CARD_NO

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()

    static constraints = {
        COMMITTEE(nullable: false)
        MEMBER_NAME(nullable: false)
        MEMBER_DESIGNATION(nullable: false)
        MEMBER_ADDRESS(nullable: false)
        MOBILE_NO(nullable: false)
        EMAIL_ADDRESS(nullable: false)
        NATIONAL_ID_CARD_NO(nullable: false)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }

    String toString(){
        return MEMBER_NAME
    }
}
