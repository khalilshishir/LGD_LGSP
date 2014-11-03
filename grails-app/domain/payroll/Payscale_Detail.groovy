package payroll

class Payscale_Detail {

    static mapping = {
        table('HR_PAYSCALE_DETAIL')
        version(false)
    }

    long id
    Payscale PAYSCALE_ID
    long STAGE
    float BASIC
    float DA
    float HOUSE_RENT
    float CONVEYANCE_ALLOW
    float WASHING_ALLOW
    float MEDICAL_ALLOW
    float PF_CONTRIBUTION
    float FESTIVAL_BONUS
    float ANNUAL_BONUS
    float GRATUITY

    static constraints = {
        PAYSCALE_ID(nullable: true)
        STAGE(nullable: true)
        BASIC(nullable: true)
        DA(nullable: true)
        HOUSE_RENT(nullable: true)
        CONVEYANCE_ALLOW(nullable: true)
        WASHING_ALLOW(nullable: true)
        MEDICAL_ALLOW(nullable: true)
        PF_CONTRIBUTION(nullable: true)
        FESTIVAL_BONUS(nullable: true)
        ANNUAL_BONUS(nullable: true)
        GRATUITY(nullable: true)
    }
    String toString(){
        return PAYSCALE_ID
    }
}
