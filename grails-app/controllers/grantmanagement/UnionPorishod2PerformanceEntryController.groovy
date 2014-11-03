package grantmanagement

import org.springframework.dao.DataIntegrityViolationException
import planningbudget.FiscalYear
import settings.District
import settings.Division
import settings.UnionParishad
import settings.Upazila

class UnionPorishod2PerformanceEntryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [unionPorishod2PerformanceEntryInstanceList: UnionPorishod2PerformanceEntry.list(params), unionPorishod2PerformanceEntryInstanceTotal: UnionPorishod2PerformanceEntry.count()]
    }

    def create() {
        [unionPorishod2PerformanceEntryInstance: new UnionPorishod2PerformanceEntry(params)]
    }

    def save() {
        def unionPorishod2PerformanceEntryInstance = new UnionPorishod2PerformanceEntry(params)
        if (!unionPorishod2PerformanceEntryInstance.save(flush: true)) {
            render(view: "create", model: [unionPorishod2PerformanceEntryInstance: unionPorishod2PerformanceEntryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry'), unionPorishod2PerformanceEntryInstance.id])
        redirect(action: "show", id: unionPorishod2PerformanceEntryInstance.id)
    }

    def show(Long id) {
        def unionPorishod2PerformanceEntryInstance = UnionPorishod2PerformanceEntry.get(id)
        if (!unionPorishod2PerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        [unionPorishod2PerformanceEntryInstance: unionPorishod2PerformanceEntryInstance]
    }

    def edit(Long id) {
        def unionPorishod2PerformanceEntryInstance = UnionPorishod2PerformanceEntry.get(id)
        if (!unionPorishod2PerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        [unionPorishod2PerformanceEntryInstance: unionPorishod2PerformanceEntryInstance]
    }

    def update(Long id, Long version) {
        def unionPorishod2PerformanceEntryInstance = UnionPorishod2PerformanceEntry.get(id)
        if (!unionPorishod2PerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (unionPorishod2PerformanceEntryInstance.version > version) {
                unionPorishod2PerformanceEntryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry')] as Object[],
                        "Another user has updated this UnionPorishod2PerformanceEntry while you were editing")
                render(view: "edit", model: [unionPorishod2PerformanceEntryInstance: unionPorishod2PerformanceEntryInstance])
                return
            }
        }

        unionPorishod2PerformanceEntryInstance.properties = params

        if (!unionPorishod2PerformanceEntryInstance.save(flush: true)) {
            render(view: "edit", model: [unionPorishod2PerformanceEntryInstance: unionPorishod2PerformanceEntryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry'), unionPorishod2PerformanceEntryInstance.id])
        redirect(action: "show", id: unionPorishod2PerformanceEntryInstance.id)
    }

    def delete(Long id) {
        def unionPorishod2PerformanceEntryInstance = UnionPorishod2PerformanceEntry.get(id)
        if (!unionPorishod2PerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        try {
            unionPorishod2PerformanceEntryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'unionPorishod2PerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry'), id])
            redirect(action: "show", id: id)
        }
    }

    def UnionPorishod2PerformanceEntry(){
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union2")).sort{it.slNo}
        [lstPerformanceHead: lstPerformanceHead]
    }

    def PerformanceEntrySave(){
        UnionPorishod2PerformanceEntry unionPorishodPerformanceEntry
        String x=""
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union2")).sort{it.slNo}
        for (performanceHead in lstPerformanceHead){
            List<PerformanceIndicator> lstPerformanceIndicator=PerformanceIndicator.findAllByPerformanceHead(performanceHead).sort{it.slNo}
            for(performanceIndicator in lstPerformanceIndicator){
                if(params.district&&params.division&&params.fiscalYear&&params["txtMark-"+performanceIndicator?.id]) {

                    unionPorishodPerformanceEntry = new UnionPorishod2PerformanceEntry()
//                    zillaPorishodPerformanceEntry = new ZillaPorishodPerformanceEntry()


                    unionPorishodPerformanceEntry.performanceHead = performanceHead

                    unionPorishodPerformanceEntry.district = District.get(params.district)

                    unionPorishodPerformanceEntry.division = Division.get(params.division)

                    unionPorishodPerformanceEntry.fiscalYear = FiscalYear.get(params.fiscalYear)

//                    unionPorishodPerformanceEntry.markDstribution = MarkDstribution.get(params["hd-" + performanceIndicator.id + ""])
                    unionPorishodPerformanceEntry.performanceIndicator = performanceIndicator
                    unionPorishodPerformanceEntry.upazila=Upazila.get(params.upazila)
                    unionPorishodPerformanceEntry.unionParishad=UnionParishad.get(params.unionParishad)
//                    if (params["txt-" + performanceIndicator.id + ""])

                    unionPorishodPerformanceEntry.obtainMark =Integer.parseInt (params["txtMark-"+performanceIndicator?.id])
                    unionPorishodPerformanceEntry.organiztionType = PerformanceOrgType.findByKeyword("Union2")

                    if (!unionPorishodPerformanceEntry.save(flush: true)) {
                        render(view: "UnionPorisodPerformanceEntry", model: [unionPorishodPerformanceEntryInstance: unionPorishodPerformanceEntry])
                        return
                    }
                }
                else {
                    x+=params.district+""+params.division+""+params.fiscalYear+""+(params["txtMark-" + performanceIndicator.id + ""])
                }

            }
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishod2PerformanceEntry'), unionPorishodPerformanceEntry.id])
        redirect(action: "PerformanceShow",params: [union:params.unionParishad,fiscalYr:params.fiscalYear])
    }

    def PerformanceShow(){
        def union=params.union
        def fiscalYr=params.fiscalYr

        UnionParishad unionParishad=UnionParishad.get(union)
        FiscalYear fiscalYear=FiscalYear.get(fiscalYr)

        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union2")).sort{it.slNo}
        [lstPerformanceHead: lstPerformanceHead,union: unionParishad,fiscalYr: fiscalYear]


    }

    def PerformanceEdit(){
        def union=params.union
        def fiscalYr=params.fiscalYr

        UnionParishad unionParishad=UnionParishad.get(union)
        FiscalYear fiscalYear=FiscalYear.get(fiscalYr)

        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union2")).sort{it.slNo}
        [lstPerformanceHead: lstPerformanceHead,union: unionParishad,fiscalYr: fiscalYear]
    }

    def PerformanceEntryUpdate(){
        def union=params.hdunion
        def fiscalYr=params.hdfiscalYear

        String x=""
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union2")).sort{it.slNo}
        for (performanceHead in lstPerformanceHead){
            List<PerformanceIndicator> lstPerformanceIndicator=PerformanceIndicator.findAllByPerformanceHead(performanceHead)
            for(performanceIndicator in lstPerformanceIndicator){
                if(params["txtMark-"+performanceIndicator?.id]&&params["hdId-" + performanceIndicator.id]) {
                    Long id=Long.valueOf(params["hdId-" + performanceIndicator.id + ""])
                    def unionPorishodPerformanceEntryInstance = grantmanagement.UnionPorishod2PerformanceEntry.get(id)
                    if (!unionPorishodPerformanceEntryInstance) {
                        flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorisodPerformanceEntry'), id])
                        redirect(action: "list")
                        return
                    }

                    unionPorishodPerformanceEntryInstance.setMarkDstribution(MarkDstribution.get(params["hd-" + performanceIndicator.id + ""]))
                    unionPorishodPerformanceEntryInstance.setObtainMark(Integer.parseInt (params["txtMark-" + performanceIndicator.id + ""]))

                    if (!unionPorishodPerformanceEntryInstance.save(flush: true)) {
                        render(view: "edit", model: [zillaPorishodPerformanceEntryInstance: unionPorishodPerformanceEntryInstance])
                        return
                    }
                }
                else {
                    x+=(params["txt-"+performanceIndicator?.id]&&params["hdId-"+performanceIndicator?.id])
                }

            }
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'unionPorishodPerformanceEntry')])
        redirect(action: "PerformanceShow",params: [union:union,fiscalYr:fiscalYr])
    }
    def PerformanceList(Integer max){


//        [unionPorishod2PerformanceEntryInstanceList: UnionPorishod2PerformanceEntry.list(params), unionPorishod2PerformanceEntryInstanceTotal: UnionPorishod2PerformanceEntry.count()]
        def fuck=grantmanagement.UnionPorishod2PerformanceEntry.createCriteria().list {
            eq("organiztionType",PerformanceOrgType.findByKeyword("Union2"))
        }
//        params.max = Math.min(max ?: 10, 100)
                [unionPorishod2PerformanceEntryInstanceList: fuck.toList(), unionPorishod2PerformanceEntryInstanceTotal: fuck.size()]
    }
}
