 package fixedAsset

class ASSET_MAJOR_CATEGORY {
    static mapping = {
        table('FA_ASSET_MAJOR_CATEGORY')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    String MAJOR_CATEGORY_NAME
    String DESCRIPTION
    String REMARKS
    static constraints = {
        MAJOR_CATEGORY_NAME(nullable: true)
        DESCRIPTION(nullable: true)
        REMARKS(nullable: true)
    }
    String toString(){
        return MAJOR_CATEGORY_NAME
    }
}
