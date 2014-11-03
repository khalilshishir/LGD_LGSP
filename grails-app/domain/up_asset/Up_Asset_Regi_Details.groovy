package up_asset

import lookUp.AllLookup

class Up_Asset_Regi_Details {

    static mapping = {
        table("UP_ASSET_REGI_DETAILS")
        version(false)
    }
    long id
    Integer QUANTITY
    //AllLookup UNITS
    String UNITS
    String SOURCE_OF_FUND
    Date LAST_MAINTENANCE_DATE = new Date()
    Double EXPENSES_AMOUNT
    String MAINTENANCE_EXPENSES_FUND_SRC
    Date NEXT_MAINTENANCE_DATE = new Date()
    String COMMENTS
    Up_Asset_Regi_Master UP_ASSET_REGI_MASTER
    UpAssetRegister ASSET_NAME

    long CREATED_BY = 0
    Date CREATED_DATE = new Date()
    long UPDATED_BY = 0
    Date UPDATED_DATE = new Date()

    static constraints = {

        QUANTITY(nullable: true)
        UNITS(nullable: true)
        SOURCE_OF_FUND(nullable: true)
        LAST_MAINTENANCE_DATE(nullable: true)
        EXPENSES_AMOUNT(nullable: true)
        MAINTENANCE_EXPENSES_FUND_SRC(nullable: true)
        NEXT_MAINTENANCE_DATE(nullable: true)
        COMMENTS(nullable: true)
        UP_ASSET_REGI_MASTER(nullable: true)
        ASSET_NAME(nullable: true)

        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
}
