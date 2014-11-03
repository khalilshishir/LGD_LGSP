package monitoring

import settings.Upazila
import settings.District

class INSPECTION {
    static mapping = {
        table('MO_INSPECTION')
        version(false)
        ID(updateable: false,insertable: false)
    }
    Long ID
    District DISTRICT_ID
    Upazila UPAZILLA_ID
    String UP_NAME_CODE
    String CHAIRMAN_NAME
    String INSPECTION_DATE_NAME
    String FISCAL_YEAR_DATE
    Float BGB_AMOUNT
    Float PGB_AMOUNT
    String JOGAJOG
    String SASTHO
    String PANI_SORBORAHO
    String SIKHA
    String PRAKRITIK_SOMPOD
    String KRISHI_BAZAR
    String POI_NISKASON
    String MANOBSOMPOD_UNNOION
    String SKIM_TALIKA
    String BISAS_MONTOBBO
    //question
    Boolean NEGATIVE_SKIM_YES
    Boolean NEGATIVE_SKIM_NO
    String  NEGATIVE_SKIM

    Boolean MOHILA_ORTHO_YES
    Boolean MOHILA_ORTHO_NO
    String  MOHILA_ORTHO_SKIM

    Boolean VOTER_OPOSTHITI_YES
    Boolean VOTER_OPOSTHITI_NO
    String  VOTER_OPOSTHITI

    Boolean MOHILA_SOVAPOTI_YES
    Boolean MOHILA_SOVAPOTI_NO
    String  MOHILA_SOVAPOTI

    Boolean BGCC_JACHAI_YES
    Boolean BGCC_JACHAI_NO
    String  BGCC_JACHAI

    Boolean PONCHOBARSHIK_YES
    Boolean PONCHOBARSHIK_NO
    String  PONCHOBARSHIK

    Boolean UNNOION_BUDGET_YES
    Boolean UNNOION_BUDGET_NO
    String  UNNOION_BUDGET

    Boolean CASHBOOK_SONROKHON_YES
    Boolean CASHBOOK_SONROKHON_NO
    String  CASHBOOK_SONROKHON

    Boolean SOMPOTTI_PRONOION_YES
    Boolean SOMPOTTI_PRONOION_NO
    String  SOMPOTTI_PRONOION

    Boolean SAMAJIK_SUROKHA_YES
    Boolean SAMAJIK_SUROKHA_NO
    String  SAMAJIK_SUROKHA

    Boolean ODIT_NOTICE_YES
    Boolean ODIT_NOTICE_NO
    String  ODIT_NOTICE

    Boolean VAT_TAX_YES
    Boolean VAT_TAX_NO
    String  VAT_TAX

    Boolean KROI_PROKRIA_YES
    Boolean KROI_PROKRIA_NO
    String  KROI_PROKRIA

    Boolean PIC_SKIM_YES
    Boolean PIC_SKIM_NO
    String  PIC_SKIM

    Boolean OPEN_TENDER_YES
    Boolean OPEN_TENDER_NO
    String  OPEN_TENDER

    Boolean BRODSHEET_JOBAB_YES
    Boolean BRODSHEET_JOBAB_NO
    String  BRODSHEET_JOBAB

    Boolean SANNASHIK_PROTIBADON_YES
    Boolean SANNASHIK_PROTIBADON_NO
    String  SANNASHIK_PROTIBADON

    Boolean NOTHI_SONROKHITO_YES
    Boolean NOTHI_SONROKHITO_NO
    String  NOTHI_SONROKHITO

    Boolean BANK_SOMONNOI_YES
    Boolean BANK_SOMONNOI_NO
    String  BANK_SOMONNOI

    Boolean GRAM_ADALOT_YES
    Boolean GRAM_ADALOT_NO
    String  GRAM_ADALOT

    Boolean RAJOSSO_NIRDHARON_YES
    Boolean RAJOSSO_NIRDHARON_NO
    String  RAJOSSO_NIRDHARON

    Boolean RAJOSSO_BRIDHI_YES
    Boolean RAJOSSO_BRIDHI_NO
    String  RAJOSSO_BRIDHI

    Boolean UDC_SOVA_YES
    Boolean UDC_SOVA_NO
    String  UDC_SOVA

    Boolean BGCC_SOVA_YES
    Boolean BGCC_SOVA_NO
    String  BGCC_SOVA

    Boolean SSC_SODOSHO_YES
    Boolean SSC_SODOSHO_NO
    String  SSC_SODOSHO

    Boolean SKIM_BILL_YES
    Boolean SKIM_BILL_NO
    String  SKIM_BILL

    Boolean BILL_PRODAN_YES
    Boolean BILL_PRODAN_NO
    String  BILL_PRODAN

    Boolean MOHILA_SODOSSO_OBOHITO_YES
    Boolean MOHILA_SODOSSO_OBOHITO_NO
    String  MOHILA_SODOSSO_OBOHITO

    Boolean SROMGHONO_SKIM_BATITO_YES
    Boolean SROMGHONO_SKIM_BATITO_NO
    String  SROMGHONO_SKIM_BATITO

    Boolean BIGOTO_SON_SKIM_YES
    Boolean BIGOTO_SON_SKIM_NO
    String  BIGOTO_SON_SKIM

    Boolean DF_SKIM_YES
    Boolean DF_SKIM_NO
    String  DF_SKIM

    Boolean WARD_PROKOLPO_YES
    Boolean WARD_PROKOLPO_NO
    String  WARD_PROKOLPO

    Boolean LGSP_PROKOLPO_YES
    Boolean LGSP_PROKOLPO_NO
    String  LGSP_PROKOLPO

    Boolean UNION_PROKOLPO_YES
    Boolean UNION_PROKOLPO_NO
    String  UNION_PROKOLPO

    Boolean DURNITI_YES
    Boolean DURNITI_NO
    String  DURNITI

    String  SUPARISH

    static constraints = {
        DISTRICT_ID(nullable: true)
        UPAZILLA_ID(nullable: true)
        UP_NAME_CODE(nullable: true)
        CHAIRMAN_NAME(nullable: true)
        INSPECTION_DATE_NAME(nullable: true)
        FISCAL_YEAR_DATE(nullable: true)
        BGB_AMOUNT(nullable: true)
        PGB_AMOUNT(nullable: true)
        JOGAJOG(nullable: true)
        SASTHO(nullable: true)
        PANI_SORBORAHO(nullable: true)
        SIKHA(nullable: true)
        PRAKRITIK_SOMPOD(nullable: true)
        KRISHI_BAZAR(nullable: true)
        POI_NISKASON(nullable: true)
        MANOBSOMPOD_UNNOION(nullable: true)
        SKIM_TALIKA(nullable: true)
        BISAS_MONTOBBO(nullable: true)
        //question
        NEGATIVE_SKIM_YES(nullable: true)
        NEGATIVE_SKIM_NO(nullable: true)
        NEGATIVE_SKIM(nullable: true)

        MOHILA_ORTHO_YES(nullable: true)
        MOHILA_ORTHO_NO(nullable: true)
        MOHILA_ORTHO_SKIM(nullable: true)

        VOTER_OPOSTHITI_YES(nullable: true)
        VOTER_OPOSTHITI_NO(nullable: true)
        VOTER_OPOSTHITI(nullable: true)

        MOHILA_SOVAPOTI_YES(nullable: true)
        MOHILA_SOVAPOTI_NO(nullable: true)
        MOHILA_SOVAPOTI(nullable: true)

        BGCC_JACHAI_YES(nullable: true)
        BGCC_JACHAI_NO(nullable: true)
        BGCC_JACHAI(nullable: true)

        PONCHOBARSHIK_YES(nullable: true)
        PONCHOBARSHIK_NO(nullable: true)
        PONCHOBARSHIK(nullable: true)

        UNNOION_BUDGET_YES(nullable: true)
        UNNOION_BUDGET_NO(nullable: true)
        UNNOION_BUDGET(nullable: true)

        CASHBOOK_SONROKHON_YES(nullable: true)
        CASHBOOK_SONROKHON_NO(nullable: true)
        CASHBOOK_SONROKHON(nullable: true)

        SOMPOTTI_PRONOION_YES(nullable: true)
        SOMPOTTI_PRONOION_NO(nullable: true)
        SOMPOTTI_PRONOION(nullable: true)

        SAMAJIK_SUROKHA_YES(nullable: true)
        SAMAJIK_SUROKHA_NO(nullable: true)
        SAMAJIK_SUROKHA(nullable: true)

        ODIT_NOTICE_YES(nullable: true)
        ODIT_NOTICE_NO(nullable: true)
        ODIT_NOTICE(nullable: true)

        VAT_TAX_YES(nullable: true)
        VAT_TAX_NO(nullable: true)
        VAT_TAX(nullable: true)

        KROI_PROKRIA_YES(nullable: true)
        KROI_PROKRIA_NO(nullable: true)
        KROI_PROKRIA(nullable: true)

        PIC_SKIM_YES(nullable: true)
        PIC_SKIM_NO(nullable: true)
        PIC_SKIM(nullable: true)

        OPEN_TENDER_YES(nullable: true)
        OPEN_TENDER_NO(nullable: true)
        OPEN_TENDER(nullable: true)

        BRODSHEET_JOBAB_YES(nullable: true)
        BRODSHEET_JOBAB_NO(nullable: true)
        BRODSHEET_JOBAB(nullable: true)

        SANNASHIK_PROTIBADON_YES(nullable: true)
        SANNASHIK_PROTIBADON_NO(nullable: true)
        SANNASHIK_PROTIBADON(nullable: true)

        NOTHI_SONROKHITO_YES(nullable: true)
        NOTHI_SONROKHITO_NO(nullable: true)
        NOTHI_SONROKHITO(nullable: true)

        BANK_SOMONNOI_YES(nullable: true)
        BANK_SOMONNOI_NO(nullable: true)
        BANK_SOMONNOI(nullable: true)

        GRAM_ADALOT_YES(nullable: true)
        GRAM_ADALOT_NO(nullable: true)
        GRAM_ADALOT(nullable: true)

        RAJOSSO_NIRDHARON_YES(nullable: true)
        RAJOSSO_NIRDHARON_NO(nullable: true)
        RAJOSSO_NIRDHARON(nullable: true)

        RAJOSSO_BRIDHI_YES(nullable: true)
        RAJOSSO_BRIDHI_NO(nullable: true)
        RAJOSSO_BRIDHI(nullable: true)

        UDC_SOVA_YES(nullable: true)
        UDC_SOVA_NO(nullable: true)
        UDC_SOVA(nullable: true)

        BGCC_SOVA_YES(nullable: true)
        BGCC_SOVA_NO(nullable: true)
        BGCC_SOVA(nullable: true)

        SSC_SODOSHO_YES(nullable: true)
        SSC_SODOSHO_NO(nullable: true)
        SSC_SODOSHO(nullable: true)

        SKIM_BILL_YES(nullable: true)
        SKIM_BILL_NO(nullable: true)
        SKIM_BILL(nullable: true)

        BILL_PRODAN_YES(nullable: true)
        BILL_PRODAN_NO(nullable: true)
        BILL_PRODAN(nullable: true)

        MOHILA_SODOSSO_OBOHITO_YES(nullable: true)
        MOHILA_SODOSSO_OBOHITO_NO(nullable: true)
        MOHILA_SODOSSO_OBOHITO(nullable: true)

        SROMGHONO_SKIM_BATITO_YES(nullable: true)
        SROMGHONO_SKIM_BATITO_NO(nullable: true)
        SROMGHONO_SKIM_BATITO(nullable: true)

        BIGOTO_SON_SKIM_YES(nullable: true)
        BIGOTO_SON_SKIM_NO(nullable: true)
        BIGOTO_SON_SKIM(nullable: true)

        DF_SKIM_YES(nullable: true)
        DF_SKIM_NO(nullable: true)
        DF_SKIM(nullable: true)

        WARD_PROKOLPO_YES(nullable: true)
        WARD_PROKOLPO_NO(nullable: true)
        WARD_PROKOLPO(nullable: true)

        LGSP_PROKOLPO_YES(nullable: true)
        LGSP_PROKOLPO_NO(nullable: true)
        LGSP_PROKOLPO(nullable: true)

        UNION_PROKOLPO_YES(nullable: true)
        UNION_PROKOLPO_NO(nullable: true)
        UNION_PROKOLPO(nullable: true)

        DURNITI_YES(nullable: true)
        DURNITI_NO(nullable: true)
        DURNITI(nullable: true)

        SUPARISH(nullable: true)
    }
}
