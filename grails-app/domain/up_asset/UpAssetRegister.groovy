package up_asset

import lookUp.AllLookup

class UpAssetRegister {
    static mapping = {
        table("UP_ASSET_REGISTER")
        version(false)
    }

    long id
    AllLookup  ASSET_TYPE
    //String ASSET_TYPE
    String ASSET_NAME
    Date PURCHASE_DATE = new Date()
    Double PURCHASE_AMOUNT

    long CREATED_BY = 0
    Date CREATED_DATE = new Date()
    long UPDATED_BY = 0
    Date UPDATED_DATE = new Date()


    static constraints = {
        id (nullable: true)
        ASSET_TYPE(nullable: true)
        ASSET_NAME(nullable: true)
        PURCHASE_DATE(nullable: true)
        PURCHASE_AMOUNT(nullable: true)

        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }

}
