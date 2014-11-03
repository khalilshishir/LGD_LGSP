package procurement.up.otmprocurement

class UpOtmOpeningSheetDetails {
    static mapping = {
        table('UP_OTM_OPENING_SHEET_DETAILS')
        version(false)
    }
    long id
    String VENDOR_NAME
    double PRICE
    String COMMENTS

    UpOtmOpeningSheet upOtmOpeningSheet

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()


    static constraints = {
        VENDOR_NAME(nullable: false)
        PRICE(nullable: false)
        COMMENTS(nullable: false)
        upOtmOpeningSheet(nullable: false)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
    }
    String toString(){
        return VENDOR_NAME
    }

}
