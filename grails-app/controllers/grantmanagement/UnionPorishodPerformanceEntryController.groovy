package grantmanagement

import org.springframework.dao.DataIntegrityViolationException
import planningbudget.FiscalYear
import settings.District
import settings.Division
import settings.UnionParishad
import settings.Upazila

class UnionPorishodPerformanceEntryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [unionPorishodPerformanceEntryInstanceList: UnionPorishodPerformanceEntry.list(params), unionPorishodPerformanceEntryInstanceTotal: UnionPorishodPerformanceEntry.count()]
    }

    def create() {
        [unionPorishodPerformanceEntryInstance: new UnionPorishodPerformanceEntry(params)]
    }

    def save() {
        def unionPorishodPerformanceEntryInstance = new UnionPorishodPerformanceEntry(params)
        if (!unionPorishodPerformanceEntryInstance.save(flush: true)) {
            render(view: "create", model: [unionPorishodPerformanceEntryInstance: unionPorishodPerformanceEntryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishodPerformanceEntry'), unionPorishodPerformanceEntryInstance.id])
        redirect(action: "show", id: unionPorishodPerformanceEntryInstance.id)
    }

    def show(Long id) {
        def unionPorishodPerformanceEntryInstance = UnionPorishodPerformanceEntry.get(id)
        if (!unionPorishodPerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishodPerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        [unionPorishodPerformanceEntryInstance: unionPorishodPerformanceEntryInstance]
    }

    def edit(Long id) {
        def unionPorishodPerformanceEntryInstance = UnionPorishodPerformanceEntry.get(id)
        if (!unionPorishodPerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishodPerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        [unionPorishodPerformanceEntryInstance: unionPorishodPerformanceEntryInstance]
    }

    def update(Long id, Long version) {
        def unionPorishodPerformanceEntryInstance = UnionPorishodPerformanceEntry.get(id)
        if (!unionPorishodPerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishodPerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (unionPorishodPerformanceEntryInstance.version > version) {
                unionPorishodPerformanceEntryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishodPerformanceEntry')] as Object[],
                        "Another user has updated this UnionPorishodPerformanceEntry while you were editing")
                render(view: "edit", model: [unionPorishodPerformanceEntryInstance: unionPorishodPerformanceEntryInstance])
                return
            }
        }

        unionPorishodPerformanceEntryInstance.properties = params

        if (!unionPorishodPerformanceEntryInstance.save(flush: true)) {
            render(view: "edit", model: [unionPorishodPerformanceEntryInstance: unionPorishodPerformanceEntryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishodPerformanceEntry'), unionPorishodPerformanceEntryInstance.id])
        redirect(action: "show", id: unionPorishodPerformanceEntryInstance.id)
    }

    def delete(Long id) {
        def unionPorishodPerformanceEntryInstance = UnionPorishodPerformanceEntry.get(id)
        if (!unionPorishodPerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishodPerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        try {
            unionPorishodPerformanceEntryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishodPerformanceEntry'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorishodPerformanceEntry'), id])
            redirect(action: "show", id: id)
        }
    }
    def UnionPorisodPerformanceEntry(){

        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union")).sort{it.slNo}
        [lstPerformanceHead: lstPerformanceHead]
    }
    def PerformanceEntrySave(){
        UnionPorishodPerformanceEntry unionPorishodPerformanceEntry
        String x=""
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union")).sort{it.slNo}
        for (performanceHead in lstPerformanceHead){
            List<PerformanceIndicator> lstPerformanceIndicator=PerformanceIndicator.findAllByPerformanceHead(performanceHead)
            for(performanceIndicator in lstPerformanceIndicator){
                if(params.district&&params.division&&params.fiscalYear&&params["hd-" + performanceIndicator.id + ""]&&params["txt-" + performanceIndicator.id + ""]) {

                    unionPorishodPerformanceEntry = new UnionPorishodPerformanceEntry()
//                    zillaPorishodPerformanceEntry = new ZillaPorishodPerformanceEntry()


                    unionPorishodPerformanceEntry.performanceHead = performanceHead

                    unionPorishodPerformanceEntry.district = District.get(params.district)

                    unionPorishodPerformanceEntry.division = Division.get(params.division)

                    unionPorishodPerformanceEntry.fiscalYear = FiscalYear.get(params.fiscalYear)

                    unionPorishodPerformanceEntry.markDstribution = MarkDstribution.get(params["hd-" + performanceIndicator.id + ""])
                    unionPorishodPerformanceEntry.performanceIndicator = performanceIndicator
                    unionPorishodPerformanceEntry.upazila=Upazila.get(params.upazila)
                    unionPorishodPerformanceEntry.unionParishad=UnionParishad.get(params.unionParishad)
//                    if (params["txt-" + performanceIndicator.id + ""])

                    unionPorishodPerformanceEntry.obtainMark =Integer.parseInt (params["txt-" + performanceIndicator.id + ""])
                    unionPorishodPerformanceEntry.organiztionType = PerformanceOrgType.findByKeyword("Union")

                    if (!unionPorishodPerformanceEntry.save(flush: true)) {
                        render(view: "UnionPorisodPerformanceEntry", model: [unionPorishodPerformanceEntryInstance: unionPorishodPerformanceEntry])
                        return
                    }
                }
                else {
                    x+=params.district+""+params.division+""+params.fiscalYear+""+(params["hd-" + performanceIndicator.id + ""])+""+(params["txt-" + performanceIndicator.id + ""])
                }

            }
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), unionPorishodPerformanceEntry.id])
        redirect(action: "UnionPorishodPerformanceShow",params: [union:params.unionParishad,fiscalYr:params.fiscalYear])
    }

    def UnionPorishodPerformanceShow(){
//        def zilla=params.zila
//        def div=params.division
        def fiscalYr=params.fiscalYr
        def union=params.union
        UnionParishad unionParishad=UnionParishad.get(union)
//        District district=District.get()
//        Division division=Division.get(div)

        FiscalYear fiscalYear=FiscalYear.get(fiscalYr)
//        List<ZillaPorishodPerformanceEntry>performanceEntryList=ZillaPorishodPerformanceEntry.findAllByDistrictAndFiscalYear(district,fiscalYear)
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union")).sort{it.slNo}

        [union: unionParishad,fiscalYr: fiscalYear,lstPerformanceHead: lstPerformanceHead]
    }

    def UnionPorishodPerformanceEdit(){
//        def zilla=params.zila
//        def div=params.division
        def fiscalYr=params.fiscalYr
        def union=params.union
//        District district=District.get(zilla)
//        Division division=Division.get(div)
        UnionParishad unionParishad=UnionParishad.get(union)
        FiscalYear fiscalYear=FiscalYear.get(fiscalYr)
//        List<ZillaPorishodPerformanceEntry>performanceEntryList=ZillaPorishodPerformanceEntry.findAllByDistrictAndFiscalYear(district,fiscalYear)
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union")).sort{it.slNo}

        [union: unionParishad,fiscalYr: fiscalYear,lstPerformanceHead: lstPerformanceHead]

    }

    def UnionPorishodPerformanceUpdate(){
        def zilla=params.hdDistrict
        def div=params.hdDivision
        def fiscalYr=params.hdFiscalYr
        def union=params.hdUnion

//        ZillaPorishodPerformanceEntry zillaPorishodPerformanceEntry
        String x=""
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("Union")).sort{it.slNo}
        for (performanceHead in lstPerformanceHead){
            List<PerformanceIndicator> lstPerformanceIndicator=PerformanceIndicator.findAllByPerformanceHead(performanceHead)
            for(performanceIndicator in lstPerformanceIndicator){
                if(params["hd-" + performanceIndicator.id + ""]&&params["txt-" + performanceIndicator.id + ""]&&params["hdId-" + performanceIndicator.id + ""]) {
                    Long id=Long.valueOf(params["hdId-" + performanceIndicator.id + ""])
                    def unionPorishodPerformanceEntryInstance = UnionPorishodPerformanceEntry.get(id)
                    if (!unionPorishodPerformanceEntryInstance) {
                        flash.message = message(code: 'default.not.found.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'UnionPorisodPerformanceEntry'), id])
                        redirect(action: "list")
                        return
                    }

                    unionPorishodPerformanceEntryInstance.setMarkDstribution(MarkDstribution.get(params["hd-" + performanceIndicator.id + ""]))
                    unionPorishodPerformanceEntryInstance.setObtainMark(Integer.parseInt (params["txt-" + performanceIndicator.id + ""]))

                    if (!unionPorishodPerformanceEntryInstance.save(flush: true)) {
                        render(view: "edit", model: [zillaPorishodPerformanceEntryInstance: unionPorishodPerformanceEntryInstance])
                        return
                    }
                }
                else {
                    x+=(params["hd-" + performanceIndicator.id + ""])+""+(params["txt-" + performanceIndicator.id + ""])
                }

            }
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'unionPorishodPerformanceEntry.label', default: 'unionPorishodPerformanceEntry')])
        redirect(action: "UnionPorishodPerformanceShow",params: [union:union,zila:zilla,division:div,fiscalYr:fiscalYr])
    }

    def UnionParishodPerformanceList(Integer max){
        params.max = Math.min(max ?: 10, 100)
        def fuck=grantmanagement.UnionPorishod2PerformanceEntry.createCriteria().list {
            eq("organiztionType",PerformanceOrgType.findByKeyword("Union"))
        }
//        params.max = Math.min(max ?: 10, 100)
        [unionPorishodPerformanceEntryInstanceList: fuck.toList(), unionPorishodPerformanceEntryInstanceTotal: fuck.size()]
//        [unionPorishodPerformanceEntryInstanceList: UnionPorishodPerformanceEntry.list(params), unionPorishodPerformanceEntryInstanceTotal: UnionPorishodPerformanceEntry.count()]

    }

}
