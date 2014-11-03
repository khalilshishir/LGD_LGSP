package fixedAsset

import org.springframework.dao.DataIntegrityViolationException
import javax.sql.DataSource
import groovy.sql.Sql
import java.text.SimpleDateFormat

class ASSET_DISTRIBUTIONController {
    def dataSource
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        [ASSET_DISTRIBUTIONInstanceList: ASSET_DISTRIBUTION.list(params), ASSET_DISTRIBUTIONInstanceTotal: ASSET_DISTRIBUTION.count()]
        def ASSET_DISTRIBUTIONInstanceList=ASSET_DISTRIBUTION.findAll()
        render(view: 'list',model: [ASSET_DISTRIBUTIONInstanceList:ASSET_DISTRIBUTIONInstanceList])
    }
    def assetMovementList(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ASSET_DISTRIBUTIONInstanceList: ASSET_DISTRIBUTION.list(params), ASSET_DISTRIBUTIONInstanceTotal: ASSET_DISTRIBUTION.count()]
//        def ASSET_DISTRIBUTIONInstanceList=ASSET_DISTRIBUTION.findAll()
//        render(view: 'list',model: [ASSET_DISTRIBUTIONInstanceList:ASSET_DISTRIBUTIONInstanceList])
    }

    def create() {
        [ASSET_DISTRIBUTIONInstance: new ASSET_DISTRIBUTION(params)]
    }

    def save() {
        /*image processing start*/
        def file = request.getFile("file_");
        if (file && (file.getSize() > 0)) {

            def fileName = file.getOriginalFilename()
            def ext = fileName.substring(fileName.lastIndexOf('.'))
            def docFileTitle = UUID.randomUUID().toString()
            docFileTitle = docFileTitle + ext
            params.picFileTitle = docFileTitle
            String filePath = grailsAttributes.getApplicationContext().getResource("images/repository/Asset_Distribution/DOC_").getFile().toString() + "\\" + docFileTitle
            file.transferTo(new File(filePath))
            params.file_url_ = docFileTitle
        }
        /*image processing end*/
        def ASSET_DISTRIBUTIONInstance = new ASSET_DISTRIBUTION(params)
        if (!ASSET_DISTRIBUTIONInstance.save(flush: true)) {
            render(view: "create", model: [ASSET_DISTRIBUTIONInstance: ASSET_DISTRIBUTIONInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), ASSET_DISTRIBUTIONInstance.id])
        redirect(action: "show", id: ASSET_DISTRIBUTIONInstance.id)
    }

    def show(Long id) {
        def ASSET_DISTRIBUTIONInstance = ASSET_DISTRIBUTION.get(id)
        if (!ASSET_DISTRIBUTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), id])
            redirect(action: "list")
            return
        }

        [ASSET_DISTRIBUTIONInstance: ASSET_DISTRIBUTIONInstance]
    }

    def edit(Long id) {
        def ASSET_DISTRIBUTIONInstance = ASSET_DISTRIBUTION.get(id)
        if (!ASSET_DISTRIBUTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), id])
            redirect(action: "list")
            return
        }

        [ASSET_DISTRIBUTIONInstance: ASSET_DISTRIBUTIONInstance]
    }

    def update(Long id, Long version) {
        /*image processing start*/
        def file = request.getFile("file_");
        if (file && (file.getSize() > 0)) {

            def fileName = file.getOriginalFilename()
            def ext = fileName.substring(fileName.lastIndexOf('.'))
            def docFileTitle = UUID.randomUUID().toString()
            docFileTitle = docFileTitle + ext
            params.picFileTitle = docFileTitle
            String filePath = grailsAttributes.getApplicationContext().getResource("images/repository/Asset_Distribution/DOC_").getFile().toString() + "\\" + docFileTitle
            file.transferTo(new File(filePath))
            params.file_url_ = docFileTitle
        }
        /*image processing end*/

        def ASSET_DISTRIBUTIONInstance = ASSET_DISTRIBUTION.get(id)
        if (!ASSET_DISTRIBUTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ASSET_DISTRIBUTIONInstance.version > version) {
                ASSET_DISTRIBUTIONInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION')] as Object[],
                        "Another user has updated this ASSET_DISTRIBUTION while you were editing")
                render(view: "edit", model: [ASSET_DISTRIBUTIONInstance: ASSET_DISTRIBUTIONInstance])
                return
            }
        }

        ASSET_DISTRIBUTIONInstance.properties = params

        if (!ASSET_DISTRIBUTIONInstance.save(flush: true)) {
            render(view: "edit", model: [ASSET_DISTRIBUTIONInstance: ASSET_DISTRIBUTIONInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), ASSET_DISTRIBUTIONInstance.id])
        redirect(action: "show", id: ASSET_DISTRIBUTIONInstance.id)
    }

    def delete(Long id) {
        def ASSET_DISTRIBUTIONInstance = ASSET_DISTRIBUTION.get(id)
        if (!ASSET_DISTRIBUTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), id])
            redirect(action: "list")
            return
        }

        try {
            ASSET_DISTRIBUTIONInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), id])
            redirect(action: "show", id: id)
        }
    }
    def ajaxAssetAvailabilityCheck(){
        if (request.xhr) {
            Sql db = new Sql(dataSource)
            def assetDistributionList=db.rows("select * from FA_ASSET_DISTRIBUTION where ASSET_BOOK_ID_ID="+params.id)
            if (assetDistributionList.size()>0){
               render 0;
            }
            else {
                render 1;
            }
        }else{
            render "Restricted!"
        }
        return
    }
    def move(Long id) {
        def ASSET_DISTRIBUTIONInstance = ASSET_DISTRIBUTION.get(id)
        if (!ASSET_DISTRIBUTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), id])
            redirect(action: "list")
            return
        }

        [ASSET_DISTRIBUTIONInstance: ASSET_DISTRIBUTIONInstance]
    }

    def moveUpdate(Long id, Long version) {
        def assetMovementHistoryInstance=new ASSET_MOVEMENT_HISTORY()

        def ASSET_DISTRIBUTIONInstance = ASSET_DISTRIBUTION.get(id)
        def oldStakeholder=params.OLD_STAKEHOLDER_ID.id
        def newStakeholder=params.STAKEHOLDER_ID.id
        def oldLocation=params.OLD_LOCATION_ID.id
        def newLocation=params.LOCATION_ID.id
//        def assignDate=params.ASSIGN_DATE
        Date assignDate = new SimpleDateFormat("d/M/yyyy", Locale.ENGLISH).parse(params.ASSIGN_DATE);
        def remarks=params.REMARKS
        def description=params.DESCRIPTION
        def assetBookId=params.ASSET_BOOK_ID.id
        if((oldStakeholder!=null && !oldStakeholder.isEmpty())){

            def oldStakeholder_id = STAKEHOLDER.findById(Long.valueOf(oldStakeholder))
            assetMovementHistoryInstance.setOLD_STAKEHOLDER_ID(oldStakeholder_id)
        }
        if((newStakeholder!=null && !newStakeholder.isEmpty())){

            def newStakeholder_id = STAKEHOLDER.findById(Long.valueOf(newStakeholder))
            assetMovementHistoryInstance.setNEW_STAKEHOLDER_ID(newStakeholder_id)
        }
        if((oldLocation!=null && !oldLocation.isEmpty())){

            def oldLocation_id = LOCATION.findById(Long.valueOf(oldLocation))
            assetMovementHistoryInstance.setOLD_LOCATION_ID(oldLocation_id)
        }
        if((newLocation!=null && !newLocation.isEmpty())){

            def newLocation_id = LOCATION.findById(Long.valueOf(newLocation))
            assetMovementHistoryInstance.setNEW_LOCATION_ID(newLocation_id)
        }
        assetMovementHistoryInstance.setASSIGN_DATE(assignDate)
        assetMovementHistoryInstance.setREMARKS(remarks)
        assetMovementHistoryInstance.setDESCRIPTION(description)
        if((assetBookId!=null && !assetBookId.isEmpty())){

            def assetBookId_id = ASSET_BOOK.findById(Long.valueOf(assetBookId))
            assetMovementHistoryInstance.setASSET_BOOK_ID(assetBookId_id)
        }
        assetMovementHistoryInstance.save()

        if (!ASSET_DISTRIBUTIONInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), id])
            redirect(action: "assetMovementList")
            return
        }

        if (version != null) {
            if (ASSET_DISTRIBUTIONInstance.version > version) {
                ASSET_DISTRIBUTIONInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION')] as Object[],
                        "Another user has updated this ASSET_DISTRIBUTION while you were editing")
                render(view: "move", model: [ASSET_DISTRIBUTIONInstance: ASSET_DISTRIBUTIONInstance])
                return
            }
        }

        ASSET_DISTRIBUTIONInstance.properties = params

        if (!ASSET_DISTRIBUTIONInstance.save(flush: true)) {
            render(view: "move", model: [ASSET_DISTRIBUTIONInstance: ASSET_DISTRIBUTIONInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ASSET_DISTRIBUTION.label', default: 'ASSET_DISTRIBUTION'), ASSET_DISTRIBUTIONInstance.id])
        redirect(action: "show", id: ASSET_DISTRIBUTIONInstance.id)
    }
    def downloadFile={
        def  fName=params.file_url_
        String cvAbsolutePath = grailsAttributes.getApplicationContext().getResource("images/repository/Asset_Distribution/DOC_/"+fName+"").getFile().toString()
        def file = new File(cvAbsolutePath); //<-- you'll probably want to pass in the file name dynamically with the 'params' map
        response.setHeader("Content-disposition", "attachment;filename=${file.getName()}")
        response.outputStream << file.newInputStream()
    }
}
