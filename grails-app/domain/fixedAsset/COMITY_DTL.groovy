package fixedAsset

class COMITY_DTL {
    static mapping = {
        table('FA_COMITY_DTL')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    STAKEHOLDER STAKEHOLDER_ID
    String REMARKS
    COMITY COMITY_ID
    static belongsTo = [COMITY]
    static constraints = {
        REMARKS(nullable: true)
    }
}
