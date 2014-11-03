package fixedAsset

class ASSET_MINOR_CATEGORY {

    static mapping = {
        table('FA_ASSET_MINOR_CATEGORY')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    ASSET_MAJOR_CATEGORY ASSET_MAJOR_CATEGORY_ID
    String MINOR_CATEGORY_NAME
    String DESCRIPTION
    String REMARKS
    static constraints = {
        ASSET_MAJOR_CATEGORY_ID(nullable: true)
        MINOR_CATEGORY_NAME(nullable: true)
        DESCRIPTION(nullable: true)
        REMARKS(nullable: true)
    }
    String toString(){
        return MINOR_CATEGORY_NAME
    }
}
