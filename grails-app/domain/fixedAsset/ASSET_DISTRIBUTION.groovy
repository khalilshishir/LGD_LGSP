package fixedAsset

class ASSET_DISTRIBUTION {
    static mapping = {
        table('FA_ASSET_DISTRIBUTION')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    STAKEHOLDER STAKEHOLDER_ID
    ASSET_BOOK ASSET_BOOK_ID
    String DESCRIPTION
    LOCATION LOCATION_ID
    String REMARKS
    Date ASSIGN_DATE=new Date()
    Long CREATED_BY
    Date CREATED_DATE=new Date()
    String file_url_
    static constraints = {
        STAKEHOLDER_ID(nullable: true)
        ASSET_BOOK_ID(nullable: true)
        DESCRIPTION(nullable: true)
        LOCATION_ID(nullable: true)
        REMARKS(nullable: true)
        ASSIGN_DATE(nullable: true)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        file_url_(nullable: true)
    }
    String toString(){
        return DESCRIPTION
    }
}
