package fixedAsset
import lookUp.AllLookup
class ASSET_BOOK {
        static mapping = {
            table('FA_ASSET_BOOK')
            version(false)
            ID(updateable: false,insertable: false)
        }
    Long ID	//NUMBER (19)
    String ASSET_NAME
    String ASSET_DESCRIPTION	//FLOAT
    String ASSET_LIFE_CYCLE	//VARCHAR2 (255 Byte)
    Long ASSET_NUMBER	//DATE
    Long ASSET_RECEIVE_ID	//VARCHAR2 (255 Byte)
    AllLookup ASSET_STATUS	//NUMBER (19)                       need to integrate with allLookup
    String ASSURANCE_TYPE	//VARCHAR2 (255 Byte)
    String BRAND_NAME	//VARCHAR2 (255 Byte)
    Long COST_CENTER	//NUMBER (19) ,                      need to integrate with accounting module
    Long GRN_ID	//NUMBER (19)  good receive number
    Long ITEM_ID	//NUMBER (19)
    Long SUPPLIER_ID	//NUMBER (19)   ,                    need to integrate with purchase module
    LOCATION LOCATION_ID	//NUMBER (19)                        need to integrate with location table
    String MODEL_NAME	//VARCHAR2 (255 Byte)
    Float OPENING_BALANCE	//FLOAT
    Float ORGINAL_COST	//FLOAT
    AllLookup UOM_ID                                      //       need to integrate with allLookup
    Float QTY	 //NUMBER (10)
    Date RECEIVE_DATE=new Date()	//DATE
    Long ASSET_USER	//NUMBER (19)                            need to auto increment when asset movement
    Long WARRANTY_MONTH	//NUMBER (10)
    Date WARRANTY_START_DATE=new Date()	//DATE
    Long WARRANTY_YEAR	//NUMBER (10)
    Date WARRANTY_PERIOD=new Date()	//DATE
    String VOUCHER_NO	//VARCHAR2 (25 Byte)
    ASSET_MAJOR_CATEGORY ASSET_MAJOR_CATEGORY_ID	//NUMBER (19)                     need to integrate with Asset mejor catagory table
    ASSET_MINOR_CATEGORY ASSET_MINOR_CATEGORY_ID	//NUMBER (19)                     need to integrate with Asset minor catagory table
    Long CREATED_BY
    Date CREATED_DATE=new Date()
    Boolean IS_ACTIVE	//NUMBER (10)

    static constraints = {
        ASSET_NAME(nullable: true)
        ASSET_DESCRIPTION(nullable: true)
        ASSET_LIFE_CYCLE(nullable: true)
        ASSET_NUMBER(nullable: true)
        ASSET_RECEIVE_ID(nullable: true)
        ASSET_STATUS(nullable: true)
        ASSURANCE_TYPE(nullable: true)
        BRAND_NAME(nullable: true)
        COST_CENTER(nullable: true)
        GRN_ID(nullable: true)
        ITEM_ID(nullable: true)
        SUPPLIER_ID(nullable: true)
        LOCATION_ID(nullable: true)
        MODEL_NAME(nullable: true)
        OPENING_BALANCE(nullable: true)
        ORGINAL_COST(nullable: true)
        QTY(nullable: true)
        UOM_ID(nullable: true)
        RECEIVE_DATE(nullable: true)
        ASSET_USER(nullable: true)
        WARRANTY_MONTH(nullable: true)
        WARRANTY_START_DATE(nullable: true)
        WARRANTY_YEAR(nullable: true)
        WARRANTY_PERIOD(nullable: true)
        IS_ACTIVE(nullable: true)
        VOUCHER_NO(nullable: true)
        ASSET_MAJOR_CATEGORY_ID(nullable: true)
        ASSET_MINOR_CATEGORY_ID(nullable: true)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
    }
    String toString(){
        return ASSET_NAME
    }
}
