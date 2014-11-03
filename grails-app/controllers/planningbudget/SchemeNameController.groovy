package planningbudget

import org.springframework.dao.DataIntegrityViolationException
import settings.District
import settings.Division
import settings.UnionParishad
import settings.Upazila
import settings.Ward

class SchemeNameController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [schemeNameInstanceList: SchemeName.list(params), schemeNameInstanceTotal: SchemeName.count()]
    }

    def create() {
        [schemeNameInstance: new SchemeName(params)]
    }

    def save() {
        def schemeNameInstance = new SchemeName(params)
        schemeNameInstance.approvalStatus = SchemeApprovalStatus.findByKeyWard("pending")

        if (!schemeNameInstance.save(flush: true)) {
            render(view: "create", model: [schemeNameInstance: schemeNameInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'schemeName.label', default: 'SchemeName'), schemeNameInstance.id])
        redirect(action: "show", id: schemeNameInstance.id)
    }

    def show(Long id) {
        def schemeNameInstance = SchemeName.get(id)
        if (!schemeNameInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeName.label', default: 'SchemeName'), id])
            redirect(action: "list")
            return
        }

        [schemeNameInstance: schemeNameInstance]
    }

    def edit(Long id) {
        def schemeNameInstance = SchemeName.get(id)
        if (!schemeNameInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeName.label', default: 'SchemeName'), id])
            redirect(action: "list")
            return
        }

        [schemeNameInstance: schemeNameInstance]
    }

    def update(Long id, Long version) {
        def schemeNameInstance = SchemeName.get(id)
        if (!schemeNameInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeName.label', default: 'SchemeName'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (schemeNameInstance.version > version) {
                schemeNameInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'schemeName.label', default: 'SchemeName')] as Object[],
                          "Another user has updated this SchemeName while you were editing")
                render(view: "edit", model: [schemeNameInstance: schemeNameInstance])
                return
            }
        }

        schemeNameInstance.properties = params

        if (!schemeNameInstance.save(flush: true)) {
            render(view: "edit", model: [schemeNameInstance: schemeNameInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'schemeName.label', default: 'SchemeName'), schemeNameInstance.id])
        redirect(action: "show", id: schemeNameInstance.id)
    }

    def delete(Long id) {
        def schemeNameInstance = SchemeName.get(id)
        if (!schemeNameInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'schemeName.label', default: 'SchemeName'), id])
            redirect(action: "list")
            return
        }

        try {
            schemeNameInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'schemeName.label', default: 'SchemeName'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'schemeName.label', default: 'SchemeName'), id])
            redirect(action: "show", id: id)
        }
    }









//    def GetDistrictDetailsByDivisionID(){
//        if (request.xhr) {
//            def requestedDivisionID = params.divisionID
//            StringBuilder sb= new StringBuilder()
//
//            List <District> districtList = District.findAllByDivision(Division.findById(requestedDivisionID))
//
//            def option = districtList.DIS_ID
//            def value = districtList.DIS_NAME
//            int itemCounter = 0
//
//
//            for (int i in option){
//                itemCounter++
//            }
//
//
//            if (itemCounter==0){
//                sb.append("<Option value= 0 > Select One </option>")
//            } else{
//                sb.append("<Option value= 0 > Select One </option>")
//                for (int i = 0; i<itemCounter; i++){
//                    sb.append("<Option value="+ option[i] + "> "+ value[i] +"</option>")
//                }
//            }
//            render sb.toString()
//        }
//    }

//    def GetUpazilaDetailsByDistrictID(){
//        if (request.xhr) {
//            def requestedDistrictID = params.districtID
//            StringBuilder sb= new StringBuilder()
//            List <Upazila> upazilaList = Upazila.findAllByDistrict(District.findById(requestedDistrictID))
//
//            def option = upazilaList.UPZ_NAME
//            def value = upazilaList.UPZ_ID
//            int itemCounter = 0
//
//
//            for (int i in option){
//                itemCounter++
//            }
//
//
//            if (itemCounter==0){
//                sb.append("<Option value= 0 > Select One </option>")
//            } else{
//                sb.append("<Option value= 0 > Select One </option>")
//                for (int i = 0; i<itemCounter; i++){
//                    sb.append("<Option value="+ option[i] + "> "+ value[i] +"</option>")
//                }
//            }
//            render sb.toString()
//        }
//    }

//    def GetUnionDetailsByUpazilaID(){
//        if (request.xhr) {
//            def requestedUnionUpazilaID = params.upazilaID
//            StringBuilder sb= new StringBuilder()
//
//            List <UnionParishad> unionParishadList = UnionParishad.findAllByUpazila(Upazila.findById(requestedUnionUpazilaID))
////            List <Ward> wardList = Ward.findAllByUnionParishad(UnionParishad.findById(requestedUnionParishadID))
////            List <District> districtList = District.findAllByDivision(Division.findById(requestedDivisionID))
//
//            def option = unionParishadList.UP_ID
//            def value = unionParishadList.UP_NAME
//            int itemCounter = 0
//
//
//            for (int i in option){
//                itemCounter++
//            }
//
//
//            if (itemCounter==0){
//                sb.append("<Option value= 0 > Select One </option>")
//            } else{
//                sb.append("<Option value= 0 > Select One </option>")
//                for (int i = 0; i<itemCounter; i++){
//                    sb.append("<Option value="+ option[i] + "> "+ value[i] +"</option>")
//                }
//            }
//            render sb.toString()
//        }
//    }
//
//    def GetWardDetailsByUnionID(){
//
//        if (request.xhr) {
//            def requestedUnionParishadID = params.unionParishadID
//            StringBuilder sb= new StringBuilder()
//
//            List <Ward> wardList = Ward.findAllByUnionParishad(UnionParishad.findById(requestedUnionParishadID))
////            List <District> districtList = District.findAllByDivision(Division.findById(requestedDivisionID))
//
//            def option = wardList.WARD_NO
//            def value = wardList.WARD_NO
//            int itemCounter = 0
//
//
//            for (int i in option){
//                itemCounter++
//            }
//
//
//            if (itemCounter==0){
//                sb.append("<Option value= 0 > Select One </option>")
//            } else{
//                sb.append("<Option value= 0 > Select One </option>")
//                for (int i = 0; i<itemCounter; i++){
//                    sb.append("<Option value="+ option[i] + "> "+ value[i] +"</option>")
//                }
//            }
//            render sb.toString()
//        }
//
//    }

    def GetFiscalYearDetailsEntry(){
        if (request.xhr) {

            def requestedUnionParishad = params.unionParishadID
            def requestedWardID = params.wardID
            def requestedFiscalYear = params.fiscalYearID


            StringBuilder sb= new StringBuilder()


            FiscalYear fiscalYear=FiscalYear.findById(requestedFiscalYear)
            UnionParishad unionParishad = UnionParishad.findById(requestedUnionParishad)

            sb.append("<tr  bgcolor=\"#fff0f5\">\n" +
                    "                <th>ওয়ার্ড নম্বর</th>\n" +
                    "                <th>  অর্থ বছর  "+fiscalYear+"'তে "+unionParishad.UP_NAME+" ইউনিয়ন পরিষদ এর বিভিন্ন ওয়ার্ড এর জন্য নির্বাচিত প্রকল্পের তালিকা </th>\n" +
                    "            </tr>")

            List<Ward> wardList=Ward.findAllByUnionParishad(unionParishad)

            for (wards in wardList){

                sb.append("<tr>\n" +
                        "                <td> &nbsp ওয়ার্ড নম্বর - "+wards.WARD_NO+"</td>\n" +
                        "                <td>")

                List<SchemeName>schemeNameList=SchemeName.findAllByWardAndFiscalYear(wards,fiscalYear)

                for(schemeName in schemeNameList){
                    sb.append("<table style=\"width: 100%\"><tr><td> &nbsp <a href='../schemeName/show/"+schemeName.id+"' >"+ schemeName.schemeName +"</a>      </td></tr></table>")
                }
                sb.append("</td>\n" +
                        "            </tr>")
            }


            render sb.toString()
        }
    }
}
