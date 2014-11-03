package fixedAsset

import lookUp.AllLookup



class ASSET_DISPOSAL {
    static mapping = {
        table('FA_ASSET_DISPOSAL')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    COMITY COMITY_ID
    String NAME
    ASSET_BOOK ASSET_BOOK_ID
    Date SUBMISSION_DATE=new Date()
    Long ACCOUNT_HEAD
    Float AMOUNT
    Float AUCTION_AMOUNT
    String DESCRIPTION
    String REMARKS
    Long CREATED_BY
    Date CREATED_DATE=new Date()
    AllLookup REASON
    static constraints = {
        COMITY_ID(nullable: true)
        NAME(nullable: true)
        ASSET_BOOK_ID(nullable: true)
        SUBMISSION_DATE(nullable: true)
        ACCOUNT_HEAD(nullable: true)
        AMOUNT(nullable: true)
        DESCRIPTION(nullable: true)
        CREATED_BY(nullable: true)
        CREATED_DATE(nullable: true)
        REMARKS(nullable: true)
        AUCTION_AMOUNT(nullable: true)
    }
    String toString(){
        return NAME
    }
}
