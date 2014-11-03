package settings

import comonclass.UpProcType
import lookUp.AllLookup
import lookUp.Lookup

//import comonclass.VatAndTax
import procurement.up.Procurement_Type
import procurement.up.Procurement_Type.CommonService
import procurement.up.Up_Proc_Master
import procurement.up.communityprocurement.AdvanceAdjustment
import procurement.up.communityprocurement.MasterRoleSalary
import procurement.up.communityprocurement.MasterRoleSalaryDetails

class CommonController {

    CommonService commonService

    def index() {}

    def loadProcurementTypeBySchemeInfo(){
//        println (UpProcType.DIRECT_PROCUREMENT)
//        println (UpProcType.COMMUNITY_PROCUREMENT)
        String options = "<option value='null'>Select One</option>"

        if (params.schemeInfoId != null && params.schemeInfoId != 'null' && params.schemeInfoId != ''){
            def schemeInfo = SchemeInfo.get(params.schemeInfoId?.toLong())
            double grantedAmount = schemeInfo.GRANTED_AMOUNT
            String procurementType = schemeInfo.SCHEME_TYPE.NAME
            Boolean isLabourAppointed = schemeInfo.IS_LABOUR_APPOINTED

            if(grantedAmount > 25000 && grantedAmount <= 500000 && procurementType == "Earth-Work" && isLabourAppointed){
                options += "<option value='"+UpProcType.COMMUNITY_PROCUREMENT+"'>"+UpProcType.COMMUNITY_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.RFQ_PROCUREMENT+"'>"+UpProcType.RFQ_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }else if (grantedAmount > 25000 && grantedAmount <= 500000 && !isLabourAppointed){
                options += "<option value='"+UpProcType.RFQ_PROCUREMENT+"'>"+UpProcType.RFQ_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }else if (grantedAmount > 25000 && grantedAmount <= 500000 && isLabourAppointed){
                options += "<option value='"+UpProcType.RFQ_PROCUREMENT+"'>"+UpProcType.RFQ_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }else if (grantedAmount > 500000 && grantedAmount <= 1000000){
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }else if (grantedAmount <= 25000){
                options += "<option value='"+UpProcType.DIRECT_PROCUREMENT+"'>"+UpProcType.DIRECT_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.COMMUNITY_PROCUREMENT+"'>"+UpProcType.COMMUNITY_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.RFQ_PROCUREMENT+"'>"+UpProcType.RFQ_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }

    }
        render options
}

    def loadSchemeTypeGrantedAmountIsLabourAppointedBySchemeInfo(){
        double grantedAmount = 0.0
        String procurementType = "", isLabourAppointed = "", schemeLocation = ""
        if (params.schemeInfoId != null && params.schemeInfoId != 'null' && params.schemeInfoId != ''){
            def schemeInfo = SchemeInfo.get(params.schemeInfoId?.toLong())
            grantedAmount = schemeInfo.GRANTED_AMOUNT
            procurementType = schemeInfo.SCHEME_TYPE.NAME
            isLabourAppointed = schemeInfo.IS_LABOUR_APPOINTED ? "Yes" : "No"
            schemeLocation = schemeInfo.SCHEME_LOCATION
        }
        def schemeInfo = SchemeInfo.get(params.schemeInfoId?.toLong())
        render (template: '/up_Proc_Master/schemeTypeGrantedAmountIsLabourAppointed', model: [scheme: schemeInfo,grantedAmount: grantedAmount, procurementType: procurementType, isLabourAppointed: isLabourAppointed, schemeLocation: schemeLocation])
    }

    def loadSchemeInfo(){
        double grantedAmount = 0.0
        String procurementType = "", isLabourAppointed = "", schemeLocation = ""
        if (params.schemeInfoId != null && params.schemeInfoId != 'null' && params.schemeInfoId != ''){
            def schemeInfo = SchemeInfo.get(params.schemeInfoId?.toLong())
            grantedAmount = schemeInfo.GRANTED_AMOUNT
            procurementType = schemeInfo.SCHEME_TYPE.NAME
            isLabourAppointed = schemeInfo.IS_LABOUR_APPOINTED ? "Yes" : "No"
            schemeLocation = schemeInfo.SCHEME_LOCATION
        }
        def schemeInfo = SchemeInfo.get(params.schemeInfoId?.toLong())
        render (template: '/upDirectProcurement/schemeInfo', model: [scheme: schemeInfo,grantedAmount: grantedAmount, procurementType: procurementType, isLabourAppointed: isLabourAppointed, schemeLocation: schemeLocation])
    }

    def loadProcurementTypeOnBlurContractAmount(){
        String options = "<option value='null'>Select One</option>"
        if (params.contractAmount != null && params.contractAmount != 'null' && params.contractAmount != ''){
            String  schemeType = params.schemeType
            boolean isLabourAppointed = Boolean.parseBoolean(params.isLabourAppointed)
            double  contractAmount = Double.parseDouble(params.contractAmount)

//            println("Scheme Type ::::::::::::::::::::  " + schemeType)
//            println("Is Labour Appointed ::::::::::::  " + isLabourAppointed)
//            println("Contract Amount ::::::::::::::::  " + contractAmount)

            if(contractAmount > 25000 && contractAmount <= 500000 && schemeType == "1" && isLabourAppointed){
                options += "<option value='"+UpProcType.COMMUNITY_PROCUREMENT+"'>"+UpProcType.COMMUNITY_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.RFQ_PROCUREMENT+"'>"+UpProcType.RFQ_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }else if (contractAmount > 25000 && contractAmount <= 500000 && !isLabourAppointed){
                options += "<option value='"+UpProcType.RFQ_PROCUREMENT+"'>"+UpProcType.RFQ_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }else if (contractAmount > 25000 && contractAmount <= 500000 && isLabourAppointed){
                options += "<option value='"+UpProcType.RFQ_PROCUREMENT+"'>"+UpProcType.RFQ_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }else if (contractAmount > 500000 && contractAmount <= 1000000){
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }else if (contractAmount <= 25000){
                options += "<option value='"+UpProcType.DIRECT_PROCUREMENT+"'>"+UpProcType.DIRECT_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.COMMUNITY_PROCUREMENT+"'>"+UpProcType.COMMUNITY_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.RFQ_PROCUREMENT+"'>"+UpProcType.RFQ_PROCUREMENT+"</option>"
                options += "<option value='"+UpProcType.OTM_PROCUREMENT+"'>"+UpProcType.OTM_PROCUREMENT+"</option>"
            }

        }
        render options
    }

    def loadValuesOnUpProcMasterChangeForAdvanceAdjustment(){
//        println(params.upProcMasterId)
        double grantedAmount = 0.0
        String procurementType = ""
        double previousAdvanceAdjustment = 0, vatAndTax = 0, afterDeductionVatTax = 0, payableAmount = 0, cashInHandToPayWages = 0, totalWagesPaidAmount = 0
        if (params.upProcMasterId != null && params.upProcMasterId != 'null' && params.upProcMasterId != ''){
            def upProcMaster = Up_Proc_Master.get(params.upProcMasterId?.toLong())
            def schemeInfo = SchemeInfo.get(upProcMaster.SCHEME_INFO?.id)
            if(AdvanceAdjustment.findAllByUpProcMaster(upProcMaster).size() != 0){
                def advanceAdjustment = AdvanceAdjustment.findAllByUpProcMaster(upProcMaster)
                    advanceAdjustment.each {
                        previousAdvanceAdjustment += it.ADJUSTMENT_AMOUNT
                    }
                def masterRoleSalary = MasterRoleSalary.findByUpProcMaster(upProcMaster)
                def masterRoleSalaryDetails = MasterRoleSalaryDetails.findAllByMasterRoleSalary(masterRoleSalary)
                masterRoleSalaryDetails.each {
                    totalWagesPaidAmount += it.TOTAL_AMOUNT
                }
                cashInHandToPayWages = previousAdvanceAdjustment - totalWagesPaidAmount
//                println(cashInHandToPayWages)
            }
            grantedAmount = schemeInfo.GRANTED_AMOUNT
            payableAmount = grantedAmount - previousAdvanceAdjustment
        }
        render (template: '/advanceAdjustment/grantedAmountPreAdvAdjustmentVatTaxAfterDedVatTaxPayableAmount', model: [grantedAmount: grantedAmount, previousAdvanceAdjustment: previousAdvanceAdjustment, payableAmount: payableAmount,cashInHandToPayWages: cashInHandToPayWages])
    }
}
