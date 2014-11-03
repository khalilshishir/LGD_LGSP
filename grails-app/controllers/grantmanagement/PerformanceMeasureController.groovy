package grantmanagement

import org.springframework.dao.DataIntegrityViolationException
import planningbudget.FiscalYear
import settings.UnionParishad
import settings.Upazila

class PerformanceMeasureController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [performanceMeasureInstanceList: PerformanceMeasure.list(params), performanceMeasureInstanceTotal: PerformanceMeasure.count()]
    }

    def create() {
        [performanceMeasureInstance: new PerformanceMeasure(params)]
    }

    def save() {
        def performanceMeasureInstance = new PerformanceMeasure(params)
        if (!performanceMeasureInstance.save(flush: true)) {
            render(view: "create", model: [performanceMeasureInstance: performanceMeasureInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure'), performanceMeasureInstance.id])
        redirect(action: "show", id: performanceMeasureInstance.id)
    }

    def show(Long id) {
        def performanceMeasureInstance = PerformanceMeasure.get(id)
        if (!performanceMeasureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure'), id])
            redirect(action: "list")
            return
        }

        [performanceMeasureInstance: performanceMeasureInstance]
    }

    def edit(Long id) {
        def performanceMeasureInstance = PerformanceMeasure.get(id)
        if (!performanceMeasureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure'), id])
            redirect(action: "list")
            return
        }

        [performanceMeasureInstance: performanceMeasureInstance]
    }

    def update(Long id, Long version) {
        def performanceMeasureInstance = PerformanceMeasure.get(id)
        if (!performanceMeasureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (performanceMeasureInstance.version > version) {
                performanceMeasureInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure')] as Object[],
                          "Another user has updated this PerformanceMeasure while you were editing")
                render(view: "edit", model: [performanceMeasureInstance: performanceMeasureInstance])
                return
            }
        }

        performanceMeasureInstance.properties = params

        if (!performanceMeasureInstance.save(flush: true)) {
            render(view: "edit", model: [performanceMeasureInstance: performanceMeasureInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure'), performanceMeasureInstance.id])
        redirect(action: "show", id: performanceMeasureInstance.id)
    }

    def delete(Long id) {
        def performanceMeasureInstance = PerformanceMeasure.get(id)
        if (!performanceMeasureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure'), id])
            redirect(action: "list")
            return
        }

        try {
            performanceMeasureInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure'), id])
            redirect(action: "show", id: id)
        }
    }

    def PerformanceMeasure(){

    }

    def GenerateCategoryDetail(){
        if (request.xhr) {
            def upzId=params.upzId
            def fiyId=params.fiyId
            FiscalYear fiscalYear=FiscalYear.findById(fiyId)
            StringBuilder sb= new StringBuilder()
            List<UnionParishad> unionParishads=UnionParishad.findAllByUpazila(Upazila.findById(upzId))
            def maxMark=0
            def minMark=999
            for(unionParishad in unionParishads){

                def totalMark=UnionPorishod2PerformanceEntry.findAllByOrganiztionTypeAndFiscalYearAndUnionParishad(PerformanceOrgType.findByKeyword("Union2"),fiscalYear,unionParishad).sum{it.obtainMark}?:0
                if(maxMark<totalMark)
                    maxMark=totalMark
                if(minMark>totalMark)
                    minMark=totalMark
            }
            def slot=(maxMark+minMark)/PerformanceMeasureCategory.count()
            for(performanceCategory in grantmanagement.PerformanceMeasureCategory.list()){
                sb.append("<div class='panel panel-primary'>\n" +
                        "                <div class='panel-heading'>\n" +
                        "                    <h4 class='panel-title'>\n" +
                        "                        <a data-toggle='collapse' data-parent='#accordion'\n" +
                        "                           href='#accordion"+performanceCategory.id+"'>\n" +
                        "                            "+performanceCategory.categoryName+"("+(minMark+slot)+")" +
                        "                        </a>\n" +
                        "                    </h4>\n" +
                        "                </div>\n" +
                        "                <div id='accordion"+performanceCategory.id+"' class='panel-collapse collapse in'>\n" +
                        "                    <div class='panel-body'>")
//                "                        Khulna 45<br/>\n" +
//                        "                        Jessore 87\n" +
                for(unionParishad in unionParishads){

                    def totalMark=UnionPorishod2PerformanceEntry.findAllByOrganiztionTypeAndFiscalYearAndUnionParishad(PerformanceOrgType.findByKeyword("Union2"),fiscalYear,unionParishad).sum{it.obtainMark}?:0
                    if(totalMark>(minMark)&&totalMark<=(minMark+slot)){
                        sb.append("<input type='hidden' id='hd"+unionParishad.id+"' name='hd"+unionParishad.id+"' value='"+performanceCategory.id+"'/>")
                        sb.append(unionParishad.UP_NAME+":&nbsp;"+totalMark+"<input type='hidden' id='mark"+unionParishad.id+"' name='mark"+unionParishad.id+"' value='"+totalMark+"'<br/>")
                    }
                }
                sb.append("\n"+
                        "                    </div>\n" +
                        "                </div>\n" +
                        "            </div>\n" )
                minMark=minMark+slot

            }

            render sb.toString()
        }else{
            render "Restricted!"
        }
    }

    def PerformanceMeasureSave(){
        def upozillaId=params.upazila
        def fiyId=params.fiscalYear
        Upazila upazila=Upazila.findById(upozillaId)
        FiscalYear fiscalYear= FiscalYear.findById(fiyId)
        grantmanagement.PerformanceMeasure performanceMeasureInstance
        List<UnionParishad> unionParishads=UnionParishad.findAllByUpazila(upazila)
        for(unionParishad in unionParishads){
            if(params["hd"+unionParishad.id]){
                performanceMeasureInstance= new PerformanceMeasure()
                performanceMeasureInstance.unionParishad=unionParishad
                performanceMeasureInstance.fiscalYear=fiscalYear
                performanceMeasureInstance.upazila=upazila
                performanceMeasureInstance.measureCategory=PerformanceMeasureCategory.findById(Long.valueOf(params["hd"+unionParishad.id]))
                performanceMeasureInstance.mark=Integer.parseInt(params["mark"+unionParishad.id])

                if (!performanceMeasureInstance.save(flush: true)) {
                    render(view: "PerformanceMeasure", model: [performanceMeasureInstance: performanceMeasureInstance])
                    return
                }

            }
        }
        flash.message = message(code: 'default.updated.message', args: [message(code: 'performanceMeasure.label', default: 'PerformanceMeasure'), performanceMeasureInstance.id])
        redirect(action: "PerformanceShow", params: [upzId:upozillaId,fiyr:fiyId])
    }
    def PerformanceShow(){
        def upzId=params.upzId
        def fiyId=params.fiyr

        Upazila upazila=Upazila.findById(upzId)

        FiscalYear fiscalYear=FiscalYear.findById(fiyId)

        List<PerformanceMeasureCategory> measureCategoryList=PerformanceMeasureCategory.findAll()
        [measureCategoryList:measureCategoryList,upz: upazila,fiyr: fiscalYear]
    }

}
