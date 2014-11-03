package fixedAsset

class COMITY {
    static mapping = {
        table('FA_COMITY')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    String COMITY_NAME
    String WORK_PURPOSE
    String DESCRIPTION
    Date START_DATE=new Date()
    Date END_DATE=new Date()
    Long CREATED_BY
    Date CREATED_DATE=new Date()
    boolean IS_ACTIVE
    static hasMany = [comityDtl:COMITY_DTL]
    static constraints = {
        COMITY_NAME(nullable: true)
        WORK_PURPOSE(nullable: true)
        DESCRIPTION(nullable: true)
        START_DATE(nullable: true)
        END_DATE(nullable: true)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        IS_ACTIVE(nullable:true)
        comityDtl lazy: false,cascade: "all,delete-orphan"

    }
    String toString(){
        return COMITY_NAME
    }
}
