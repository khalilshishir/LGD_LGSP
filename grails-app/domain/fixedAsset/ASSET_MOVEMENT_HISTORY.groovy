package fixedAsset

class ASSET_MOVEMENT_HISTORY {

    static mapping = {
        table('FA_ASSET_MOVEMENT_HISTORY')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    STAKEHOLDER OLD_STAKEHOLDER_ID
    STAKEHOLDER NEW_STAKEHOLDER_ID
    ASSET_BOOK ASSET_BOOK_ID
    String DESCRIPTION
    LOCATION OLD_LOCATION_ID
    LOCATION NEW_LOCATION_ID
    String REMARKS
    Date ASSIGN_DATE=new Date()
    Long CREATED_BY
    Date CREATED_DATE=new Date()
    static constraints = {
        OLD_STAKEHOLDER_ID(nullable: true)
        NEW_STAKEHOLDER_ID(nullable: true)

        ASSET_BOOK_ID(nullable: true)
        DESCRIPTION(nullable: true)
        OLD_LOCATION_ID(nullable: true)
        NEW_LOCATION_ID(nullable: true)

        REMARKS(nullable: true)
        ASSIGN_DATE(nullable: true)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
    }
    String toString(){
        return DESCRIPTION
    }
}
