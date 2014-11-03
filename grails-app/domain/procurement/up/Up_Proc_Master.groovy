package procurement.up

import procurement.up.directprocurement.UpDirectProcurementDetails
import settings.Committee
import settings.District
import settings.Division
import settings.SchemeInfo
import settings.UnionParishad
import settings.Upazila

class Up_Proc_Master {
    static mapping = {
        table('UP_PROC_MASTER')
        version(false)
        upDirectProcurementDetails cascade: 'all'
    }
    long id
    String DETAILS
    SchemeInfo SCHEME_INFO
    Committee COMMITTEE
    String procurementType
    Division DIVISION
    District DISTRICT
    Upazila UPAZILA
    UnionParishad UNION_PARISHAD

    long CREATED_BY=0
    Date CREATED_DATE=new Date()
    long UPDATED_BY=0
    Date UPDATED_DATE=new Date()
    static hasMany = [upDirectProcurementDetails: UpDirectProcurementDetails]
    static constraints = {
        DETAILS(nullable: true)
        SCHEME_INFO(nullable: false)
        COMMITTEE(nullable: false)
        procurementType(nullable: false)

// for now these are null
        DIVISION(nullable: true)
        DISTRICT(nullable: true)
        UPAZILA(nullable: true)
        UNION_PARISHAD(nullable: true)

        CREATED_BY(nullable:true)
        CREATED_DATE(nullable:true)
        UPDATED_BY(nullable: true)
        UPDATED_DATE(nullable: true)
//        upDirectProcurementDetails lazy: false,cascade: "all,delete-orphan"
    }
    String toString(){
        return DETAILS
    }

}
