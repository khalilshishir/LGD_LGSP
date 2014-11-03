package up_asset

class Up_Asset_Regi_Master {

    static mapping = {
        table("UP_ASSET_REGI_MASTER")
        version(false)
    }

    long  id
    UpAssetRegister UP_ASSET_REGISTER

    long CREATED_BY = 0
    Date CREATED_DATE = new Date()
    long UPDATED_BY = 0
    Date UPDATED_DATE = new Date()

    static hasMany = [upAssetRegiDetails: Up_Asset_Regi_Details]

    static constraints = {
        id(nullable: true)
        UP_ASSET_REGISTER(nullable: true)

        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
}
