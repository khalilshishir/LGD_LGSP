package training

import settings.UnionParishad

class IECInformation {

    static mapping = {
        table('TR_IEC_INFORMATION')
        version(false)
    }

    Long id
    String IECI_ID
    String IECI_NATURE_OF_IEC_ACTIVI
    String IECI_NATURE_OF_IEC_ACTIVI_BN
    String IECI_PURPOSE
    String IECI_PURPOSE_BN
    String IECI_EXP_AUD_BENE_FICIARIES
    String IECI_EXP_AUD_BENE_FICIAR_BN
    String IECI_SERVICE_PROVIDERS
    String IECI_SERVICE_PROVIDERS_BN
    String IECI_AUDIENCE_REACTION
    String IECI_AUDIENCE_REACTION_BN
    String IECI_RESULT
    String IECI_RESULT_BN
    Double IECI_RELATED_COST
    Double IECI_RELATED_COST_BN
    UnionParishad UNION_PARISHAD

    Date IECI_ENTRY_DATE = new Date()
    Date CREATE_DATE=new Date()
    Boolean IS_ACTIVE = Boolean.FALSE
    Long CREATE_BY=0
    Long UPDATED_BY=0
    Date UPDATE_DATE = new Date()


    static constraints = {

        IECI_ID(nullable: false)
        IECI_NATURE_OF_IEC_ACTIVI(nullable: false)
        IECI_NATURE_OF_IEC_ACTIVI_BN(nullable: true)
        IECI_PURPOSE(nullable: false)
        IECI_PURPOSE_BN(nullable: true)
        IECI_EXP_AUD_BENE_FICIARIES(nullable: false)
        IECI_EXP_AUD_BENE_FICIAR_BN(nullable: true)
        IECI_SERVICE_PROVIDERS(nullable: false)
        IECI_SERVICE_PROVIDERS_BN(nullable: true)
        IECI_AUDIENCE_REACTION(nullable: false)
        IECI_AUDIENCE_REACTION_BN(nullable: true)
        IECI_RESULT(nullable: false)
        IECI_RESULT_BN(nullable: true)
        IECI_RELATED_COST(nullable: false)
        IECI_RELATED_COST_BN(nullable: true)
        UNION_PARISHAD(nullable: false)
        IECI_ENTRY_DATE(nullable: false)
        CREATE_DATE(nullable: false)
        IS_ACTIVE(nullable: false)
        CREATE_BY(nullable: false)
        UPDATED_BY(nullable: false)
        UPDATE_DATE(nullable: false)
    }
    String toString(){
        return IECI_ID
    }
}
