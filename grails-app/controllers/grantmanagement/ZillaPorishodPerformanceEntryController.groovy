package grantmanagement

import org.springframework.dao.DataIntegrityViolationException
import planningbudget.FiscalYear
import settings.District
import settings.Division

class ZillaPorishodPerformanceEntryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [zillaPorishodPerformanceEntryInstanceList: ZillaPorishodPerformanceEntry.list(params), zillaPorishodPerformanceEntryInstanceTotal: ZillaPorishodPerformanceEntry.count()]
    }

    def create() {
        [zillaPorishodPerformanceEntryInstance: new ZillaPorishodPerformanceEntry(params)]
    }

    def save() {
        def zillaPorishodPerformanceEntryInstance = new ZillaPorishodPerformanceEntry(params)
        if (!zillaPorishodPerformanceEntryInstance.save(flush: true)) {
            render(view: "create", model: [zillaPorishodPerformanceEntryInstance: zillaPorishodPerformanceEntryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), zillaPorishodPerformanceEntryInstance.id])
        redirect(action: "show", id: zillaPorishodPerformanceEntryInstance.id)
    }

    def show(Long id) {
        def zillaPorishodPerformanceEntryInstance = ZillaPorishodPerformanceEntry.get(id)
        if (!zillaPorishodPerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        [zillaPorishodPerformanceEntryInstance: zillaPorishodPerformanceEntryInstance]
    }

    def edit(Long id) {
        def zillaPorishodPerformanceEntryInstance = ZillaPorishodPerformanceEntry.get(id)
        if (!zillaPorishodPerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        [zillaPorishodPerformanceEntryInstance: zillaPorishodPerformanceEntryInstance]
    }

    def update(Long id, Long version) {
        def zillaPorishodPerformanceEntryInstance = ZillaPorishodPerformanceEntry.get(id)
        if (!zillaPorishodPerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (zillaPorishodPerformanceEntryInstance.version > version) {
                zillaPorishodPerformanceEntryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry')] as Object[],
                        "Another user has updated this ZillaPorishodPerformanceEntry while you were editing")
                render(view: "edit", model: [zillaPorishodPerformanceEntryInstance: zillaPorishodPerformanceEntryInstance])
                return
            }
        }

        zillaPorishodPerformanceEntryInstance.properties = params

        if (!zillaPorishodPerformanceEntryInstance.save(flush: true)) {
            render(view: "edit", model: [zillaPorishodPerformanceEntryInstance: zillaPorishodPerformanceEntryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), zillaPorishodPerformanceEntryInstance.id])
        redirect(action: "show", id: zillaPorishodPerformanceEntryInstance.id)
    }

    def delete(Long id) {
        def zillaPorishodPerformanceEntryInstance = ZillaPorishodPerformanceEntry.get(id)
        if (!zillaPorishodPerformanceEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), id])
            redirect(action: "list")
            return
        }

        try {
            zillaPorishodPerformanceEntryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), id])
            redirect(action: "show", id: id)
        }
    }
    def ZillaPorisodPerformanceEntry(){

        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("District")).sort{it.slNo}
        [lstPerformanceHead: lstPerformanceHead]
    }
    def PerformanceEntrySave(){
        ZillaPorishodPerformanceEntry zillaPorishodPerformanceEntry
        String x=""
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("District")).sort{it.slNo}
        for (performanceHead in lstPerformanceHead){
            List<PerformanceIndicator> lstPerformanceIndicator=PerformanceIndicator.findAllByPerformanceHead(performanceHead)
            for(performanceIndicator in lstPerformanceIndicator){
                if(params.district&&params.division&&params.fiscalYear&&params["hd-" + performanceIndicator.id + ""]&&params["txt-" + performanceIndicator.id + ""]) {


                    zillaPorishodPerformanceEntry = new ZillaPorishodPerformanceEntry()


                    zillaPorishodPerformanceEntry.performanceHead = performanceHead

                        zillaPorishodPerformanceEntry.district = District.get(params.district)

                        zillaPorishodPerformanceEntry.division = Division.get(params.division)

                        zillaPorishodPerformanceEntry.fiscalYear = FiscalYear.get(params.fiscalYear)

                        zillaPorishodPerformanceEntry.markDstribution = MarkDstribution.get(params["hd-" + performanceIndicator.id + ""])
                    zillaPorishodPerformanceEntry.performanceIndicator = performanceIndicator
//                    if (params["txt-" + performanceIndicator.id + ""])

                        zillaPorishodPerformanceEntry.obtainMark =Integer.parseInt (params["txt-" + performanceIndicator.id + ""])
                    zillaPorishodPerformanceEntry.organiztionType = PerformanceOrgType.findByKeyword("District")

                    if (!zillaPorishodPerformanceEntry.save(flush: true)) {
                        render(view: "ZillaPorisodPerformanceEntry", model: [zillaPorishodPerformanceEntryInstance: zillaPorishodPerformanceEntry])
                        return
                    }
                }
                else {
                  x+=params.district+""+params.division+""+params.fiscalYear+""+(params["hd-" + performanceIndicator.id + ""])+""+(params["txt-" + performanceIndicator.id + ""])
                }

            }
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), zillaPorishodPerformanceEntry.id])
        redirect(action: "ZillaPorishodPerformanceShow",params: [zila:params.district,fiscalYr:params.fiscalYear])
    }

    def ZillaPorishodPerformanceShow(){
        def zilla=params.zila
//        def div=params.division
        def fiscalYr=params.fiscalYr
        District district=District.get(zilla)
//        Division division=Division.get(div)
        FiscalYear fiscalYear=FiscalYear.get(fiscalYr)
//        List<ZillaPorishodPerformanceEntry>performanceEntryList=ZillaPorishodPerformanceEntry.findAllByDistrictAndFiscalYear(district,fiscalYear)
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("District")).sort{it.slNo}

        [district:district,fiscalYr: fiscalYear,lstPerformanceHead: lstPerformanceHead]
    }

    def ZillaPorishodPerformanceEdit(){
        def zilla=params.zila
//        def div=params.division
        def fiscalYr=params.fiscalYr
        District district=District.get(zilla)
//        Division division=Division.get(div)
        FiscalYear fiscalYear=FiscalYear.get(fiscalYr)
//        List<ZillaPorishodPerformanceEntry>performanceEntryList=ZillaPorishodPerformanceEntry.findAllByDistrictAndFiscalYear(district,fiscalYear)
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("District")).sort{it.slNo}

        [district:district,fiscalYr: fiscalYear,lstPerformanceHead: lstPerformanceHead]

    }

    def ZillaPorishodPerformanceUpdate(){
        def zilla=params.hdDistrict
        def div=params.hdDivision
        def fiscalYr=params.hdFiscalYr

//        ZillaPorishodPerformanceEntry zillaPorishodPerformanceEntry
        String x=""
        List<PerformanceHead> lstPerformanceHead=PerformanceHead.findAllByOrganiztionType(PerformanceOrgType.findByKeyword("District")).sort{it.slNo}
        for (performanceHead in lstPerformanceHead){
            List<PerformanceIndicator> lstPerformanceIndicator=PerformanceIndicator.findAllByPerformanceHead(performanceHead)
            for(performanceIndicator in lstPerformanceIndicator){
                if(params["hd-" + performanceIndicator.id + ""]&&params["txt-" + performanceIndicator.id + ""]&&params["hdId-" + performanceIndicator.id + ""]) {
                    Long id=Long.valueOf(params["hdId-" + performanceIndicator.id + ""])
                    def zillaPorishodPerformanceEntryInstance = ZillaPorishodPerformanceEntry.get(id)
                    if (!zillaPorishodPerformanceEntryInstance) {
                        flash.message = message(code: 'default.not.found.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry'), id])
                        redirect(action: "list")
                        return
                    }

                    zillaPorishodPerformanceEntryInstance.setMarkDstribution(MarkDstribution.get(params["hd-" + performanceIndicator.id + ""]))
                    zillaPorishodPerformanceEntryInstance.setObtainMark(Integer.parseInt (params["txt-" + performanceIndicator.id + ""]))

                    if (!zillaPorishodPerformanceEntryInstance.save(flush: true)) {
                        render(view: "edit", model: [zillaPorishodPerformanceEntryInstance: zillaPorishodPerformanceEntryInstance])
                        return
                    }
                }
                else {
                    x+=(params["hd-" + performanceIndicator.id + ""])+""+(params["txt-" + performanceIndicator.id + ""])
                }

            }
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'zillaPorishodPerformanceEntry.label', default: 'ZillaPorishodPerformanceEntry')])
        redirect(action: "ZillaPorishodPerformanceShow",params: [zila:zilla,fiscalYr:fiscalYr])
    }

    def ZillaParishodPerformanceList(Integer max){

        params.max = Math.min(max ?: 10, 100)
        def fuck=grantmanagement.UnionPorishod2PerformanceEntry.createCriteria().list {
            eq("organiztionType",PerformanceOrgType.findByKeyword("District"))
        }
//        params.max = Math.min(max ?: 10, 100)
        [zillaPorishodPerformanceEntryInstanceList: fuck.toList(), zillaPorishodPerformanceEntryInstanceTotal: fuck.size()]
//        params.max = Math.min(max ?: 10, 100)
//        [zillaPorishodPerformanceEntryInstanceList: ZillaPorishodPerformanceEntry.list(params), zillaPorishodPerformanceEntryInstanceTotal: ZillaPorishodPerformanceEntry.count()]

    }
}
