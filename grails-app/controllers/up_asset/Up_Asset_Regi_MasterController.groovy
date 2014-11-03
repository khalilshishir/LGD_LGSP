package up_asset

import org.springframework.dao.DataIntegrityViolationException
import java.text.SimpleDateFormat

class Up_Asset_Regi_MasterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
   def upAsset(){
       render(view: "/layouts/upassethome")
   }
//
//    def upProcurement(){
//        render( view: "/layouts/upprochome")
//    }

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [up_Asset_Regi_MasterInstanceList: Up_Asset_Regi_Master.list(params), up_Asset_Regi_MasterInstanceTotal: Up_Asset_Regi_Master.count()]
    }

    def create() {
        [up_Asset_Regi_MasterInstance: new Up_Asset_Regi_Master(params)]
    }

   /* def save() {
        def up_Asset_Regi_MasterInstance = new Up_Asset_Regi_Master(params)
        if (!up_Asset_Regi_MasterInstance.save(flush: true)) {
            render(view: "create", model: [up_Asset_Regi_MasterInstance: up_Asset_Regi_MasterInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master'), up_Asset_Regi_MasterInstance.id])
        redirect(action: "show", id: up_Asset_Regi_MasterInstance.id)
    }  */

     def save(){

     def upAssetRegiMaster = new Up_Asset_Regi_Master()
         upAssetRegiMaster.properties["id", "UP_ASSET_REGISTER"] = params
     int i=0

    while (params["upAssetRegiDetails[" + i + "].QUANTITY"] != null && params["upAssetRegiDetails[" + i + "].QUANTITY"] != ""){
         def upAssetRegiDetails = new Up_Asset_Regi_Details()
         def upAssetRegister = new UpAssetRegister()
//         upAssetRegiDetails.properties['ASSET_NAME']=params["upAssetRegiDetails[" + i + "].ASSET_NAME"]
         upAssetRegiDetails.properties['ASSET_NAME']=UpAssetRegister.get(params["upAssetRegiDetails[" + i + "].ASSET_NAME"])
         
//         demo budgMasterDetails.properties['BUDGET_ITEM']=BudgetItem.get(params["budgetMasterDetails[" + i + "].BUDGET_ITEM_ID"] )
         
         
         
         upAssetRegiDetails.properties['QUANTITY']=Integer.parseInt(params["upAssetRegiDetails[" + i + "].QUANTITY"])
         upAssetRegiDetails.properties['UNITS']=params["upAssetRegiDetails[" + i + "].UNITS"]
         upAssetRegiDetails.properties['SOURCE_OF_FUND']=params["upAssetRegiDetails[" + i + "].SOURCE_OF_FUND"]
//         upAssetRegiDetails.properties['LAST_MAINTENANCE_DATE']=params["upAssetRegiDetails[" + i + "].LAST_MAINTENANCE_DATE"]
         String string = params["upAssetRegiDetails[" + i + "].LAST_MAINTENANCE_DATE"]
        println(string)
      Date date = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH).parse(string);
        upAssetRegiDetails.properties['LAST_MAINTENANCE_DATE']=date
       //  upAssetRegiDetails.properties['LAST_MAINTENANCE_DATE']=params["upAssetRegiDetails[" + i + "].LAST_MAINTENANCE_DATE"]

    /*    Date date = new SimpleDateFormat("MM/dd/yyyy").parse(params.LAST_MAINTENANCE_DATE)
        upAssetRegiDetails.setLAST_MAINTENANCE_DATE(date) */
         
//         upAssetRegiDetails.properties['LAST_MAINTENANCE_DATE']=new Date("12/10/1014")
         upAssetRegiDetails.properties['EXPENSES_AMOUNT']=Double.parseDouble(params["upAssetRegiDetails[" + i + "].EXPENSES_AMOUNT"])
         upAssetRegiDetails.properties['MAINTENANCE_EXPENSES_FUND_SRC']=params["upAssetRegiDetails[" + i + "].MAINTENANCE_EXPENSES_FUND_SRC"]
//         upAssetRegiDetails.properties['NEXT_MAINTENANCE_DATE']=params["upAssetRegiDetails[" + i + "].NEXT_MAINTENANCE_DATE"]
       /* Date date2 = new SimpleDateFormat("MM/dd/yyyy").parse(params.NEXT_MAINTENANCE_DATE)
        upAssetRegiDetails.setNEXT_MAINTENANCE_DATE(date2) */
        upAssetRegiDetails.properties['NEXT_MAINTENANCE_DATE']=date
         upAssetRegiDetails.properties['COMMENTS']=params["upAssetRegiDetails[" + i + "].COMMENTS"]
         upAssetRegiMaster.addToUpAssetRegiDetails(upAssetRegiDetails)
         i++
     }
     if (!upAssetRegiMaster.save(flush: true)) {
         render(view: "create", model: [upAssetRegiMaster: upAssetRegiMaster])
         return
     }
     flash.message = message(code: 'default.created.message', args: [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master'), upAssetRegiMaster.id])
     redirect(action: "show", id: upAssetRegiMaster.id)
 }


    def show(Long id) {
        def up_Asset_Regi_MasterInstance = Up_Asset_Regi_Master.get(id)
        if (!up_Asset_Regi_MasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master'), id])
            redirect(action: "list")
            return
        }

        [up_Asset_Regi_MasterInstance: up_Asset_Regi_MasterInstance]
    }

    def edit(Long id) {
        def up_Asset_Regi_MasterInstance = Up_Asset_Regi_Master.get(id)
        if (!up_Asset_Regi_MasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master'), id])
            redirect(action: "list")
            return
        }

        [up_Asset_Regi_MasterInstance: up_Asset_Regi_MasterInstance]
    }

    def update(Long id, Long version) {
        def up_Asset_Regi_MasterInstance = Up_Asset_Regi_Master.get(id)
        if (!up_Asset_Regi_MasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (up_Asset_Regi_MasterInstance.version > version) {
                up_Asset_Regi_MasterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master')] as Object[],
                        "Another user has updated this Up_Asset_Regi_Master while you were editing")
                render(view: "edit", model: [up_Asset_Regi_MasterInstance: up_Asset_Regi_MasterInstance])
                return
            }
        }

        up_Asset_Regi_MasterInstance.properties = params

        if (!up_Asset_Regi_MasterInstance.save(flush: true)) {
            render(view: "edit", model: [up_Asset_Regi_MasterInstance: up_Asset_Regi_MasterInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master'), up_Asset_Regi_MasterInstance.id])
        redirect(action: "show", id: up_Asset_Regi_MasterInstance.id)
    }

   /*
    // start demo

    def update(Long id, Long version) {
        def budgetMasterInstance = BudgetMaster.get(id)
        if (!budgetMasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'budgetMaster.label', default: 'BudgetMaster'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (budgetMasterInstance.version > version) {
                budgetMasterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'budgetMaster.label', default: 'BudgetMaster')] as Object[],
                        "Another user has updated this BudgetMaster while you were editing")
                render(view: "edit", model: [budgetMasterInstance: budgetMasterInstance])
                return
            }
        }


        /*for date start*/
    /*
        Date budgetDate = new SimpleDateFormat("MM/dd/yyyy").parse(params.BUDGET_DATE)
        budgetMasterInstance.setBUDGET_DATE(budgetDate)
        /*for date end*/

    /* budgetMasterInstance.properties["id", "BUDGET_MASTER_ID","PARTICIPANT"] = params

      def i = 0
      while (params["budgetMasterDetails[" + i + "].BUDGET_ITEM_ID"] != null && params["budgetMasterDetails[" + i + "].BUDGET_ITEM_ID"] != "") {


          def budgetDetail

          if (params["budgetMasterDetails[" + i + "].deleted"] == "true" && params["budgetMasterDetails[" + i + "].new"] == "false") {
              budgetDetail = BudgetMasterDetails.get(Long.valueOf(params["budgetMasterDetails[" + i + "].id"]))
              budgetMasterInstance.removeFromBudgetMasterDetails(budgetDetail)
              budgetDetail.delete()
              i++
              continue
          }
          else if (params["budgetMasterDetails[" + i + "].deleted"] == "true" && params["budgetMasterDetails[" + i + "].new"] == "true") {
              i++
              continue
          }
          else if (params["budgetMasterDetails[" + i + "].deleted"] == "false" && params["budgetMasterDetails[" + i + "].new"] == "true") {
              budgetDetail = new BudgetMasterDetails()
              budgetDetail.properties['BUDGET_ITEM_ID'] =params["budgetMasterDetails[" + i + "].BUDGET_ITEM_ID"]
          }
          else {
              budgetDetail = BudgetMasterDetails.get(Long.valueOf(params["budgetMasterDetails[" + i + "].id"]))
          }

          budgetDetail.properties['BUDGET_ITEM']=BudgetItem.get(params["budgetMasterDetails[" + i + "].BUDGET_ITEM_ID"] )
          budgetDetail.properties['BUDGET_NO']=Long.parseLong(params["budgetMasterDetails[" + i + "].BUDGET_NO"])
          budgetDetail.properties['UNIT_COST']=Double.parseDouble(params["budgetMasterDetails[" + i + "].UNIT_COST"])
          budgetDetail.properties['FREQUENCY']=Double.parseDouble(params["budgetMasterDetails[" + i + "].FREQUENCY"])
          budgetDetail.properties['TOTAL_COST']=Double.parseDouble(params["budgetMasterDetails[" + i + "].TOTAL_COST"])


          budgetMasterInstance.addToBudgetMasterDetails(budgetDetail)
          i++
      }

//        budgetMasterInstance.properties = params

      if (!budgetMasterInstance.save(flush: true)) {
          render(view: "edit", model: [budgetMasterInstance: budgetMasterInstance])
          return
      }

      flash.message = message(code: 'default.updated.message', args: [message(code: 'budgetMaster.label', default: 'BudgetMaster'), budgetMasterInstance.id])
      redirect(action: "show", id: budgetMasterInstance.id)
  }  */
    //end demo








    def delete(Long id) {
        def up_Asset_Regi_MasterInstance = Up_Asset_Regi_Master.get(id)
        if (!up_Asset_Regi_MasterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master'), id])
            redirect(action: "list")
            return
        }

        try {
            up_Asset_Regi_MasterInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'up_Asset_Regi_Master.label', default: 'Up_Asset_Regi_Master'), id])
            redirect(action: "show", id: id)
        }
    }
}
