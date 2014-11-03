package procurement.up.Procurement_Type

import groovy.sql.Sql
import org.springframework.jdbc.datasource.TransactionAwareDataSourceProxy
import org.springframework.transaction.annotation.Transactional
import settings.SchemeInfo

class CommonService {

    TransactionAwareDataSourceProxy dataSource

    def serviceMethod() {

    }

    @Transactional
    public void deleteCommitteeMember(Long committeeId) {
        try {
            String query = """
                                 DELETE FROM committee_member WHERE id=${committeeId}; """

            Sql db = new Sql(dataSource)
            db.executeUpdate(query)

        }catch (Exception ex){
            log.error(ex.getMessage())
        }
    }

    @Transactional
    public void deleteWC(Long wcId) {
        try {
            String query = """
                                 DELETE FROM wc WHERE id=${wcId}; """

            Sql db = new Sql(dataSource)
            db.executeUpdate(query)

        }catch (Exception ex){
            log.error(ex.getMessage())
        }
    }

    @Transactional(readOnly = true)
    public List getProcurementTypeDataBySchemeInfo(SchemeInfo schemeInfo) {
        double grantedAmount = schemeInfo.GRANTED_AMOUNT
        String procurementType = schemeInfo.SCHEME_TYPE.NAME
        long one = 1, two = 2, three = 3, four = 4
        String searchFor = ""

        if(schemeInfo.GRANTED_AMOUNT > 25000 && schemeInfo.GRANTED_AMOUNT <= 500000 && schemeInfo.SCHEME_TYPE.NAME == "Earth-Work"){
            searchFor = "${two},${three},${four}"
        }else if (schemeInfo.GRANTED_AMOUNT > 25000 && schemeInfo.GRANTED_AMOUNT <= 500000 && schemeInfo.SCHEME_TYPE.NAME == "Non Earth-Work"){
            searchFor = "${three},${four}"
        }else if (schemeInfo.GRANTED_AMOUNT > 500000 & schemeInfo.GRANTED_AMOUNT<= 1000000){
            searchFor = "${four}"
        }else if (schemeInfo.GRANTED_AMOUNT <= 25000){
            searchFor = "${one},${two},${three},${four}"
        }

        List result = []

        try {
            String query = """
                                 SELECT    * FROM PROCUREMENT_TYPE

                                 WHERE ID IN (${searchFor})

                                 ORDER BY ID """

            Sql db = new Sql(dataSource)
            result = db.rows(query)

        }catch (Exception ex){
            log.error(ex.getMessage())
        }
        return result
    }

    @Transactional(readOnly = true)
    public List getRfqOpeningSheetDetailsValueByProcurementMaster(long procurementMasterId) {
        List result = []

        try {
            String query = """
                                 SELECT OSD.VENDOR_NAME,OSD.PRICE,ROWNUM,SI.GRANTED_AMOUNT
                                        FROM UP_RFQ_OPENING_SHEET_DETAILS OSD
                                        INNER JOIN UP_RFQ_OPENING_SHEET OS
                                         ON (OSD.UP_RFQ_OPENING_SHEET_ID = OS.ID)
                                        INNER JOIN UP_PROC_MASTER UPM
                                         ON (OS.UP_PROC_MASTER_ID = UPM.ID)
                                        INNER JOIN SCHEME_INFO SI
                                        ON(UPM.SCHEME_INFO_ID=SI.ID)
                                        WHERE UPM.ID IN (${procurementMasterId})  ORDER BY OSD.PRICE ASC   """

            Sql db = new Sql(dataSource)
            result = db.rows(query)

        }catch (Exception ex){
            log.error(ex.getMessage())
        }
        return result
    }

    @Transactional(readOnly = true)
    public List getOtmOpeningSheetDetailsValueByProcurementMaster(long procurementMasterId) {
        List result = []

        try {
            String query = """
                                 SELECT OSD.VENDOR_NAME,OSD.PRICE,ROWNUM
                                FROM UP_OTM_OPENING_SHEET_DETAILS OSD
                                INNER JOIN UP_OTM_OPENING_SHEET OS
                                ON (OSD.UP_OTM_OPENING_SHEET_ID = OS.ID)
                                INNER JOIN UP_PROC_MASTER UPM
                                ON (OS.UP_PROC_MASTER_ID = UPM.ID)

                                WHERE UPM.ID IN (${procurementMasterId}) ORDER BY OSD.PRICE ASC """

            Sql db = new Sql(dataSource)
            result = db.rows(query)

        }catch (Exception ex){
            log.error(ex.getMessage())
        }
        return result
    }

    @Transactional(readOnly = true)
    def getOtmIFQDetailsValueByProcurementMaster(long procurementMasterId) {
        def result = null

        try {
            String query = """
                                 SELECT UPM.DETAILS, UPM.PROCUREMENT_TYPE, IFT.CREATED_DATE AS IFT_DATE,
                                        IFT.IFT_NUMBER, IFT.SUB_LAST_DATE
                                FROM UP_PROC_MASTER UPM
                                INNER JOIN IFT ON (UPM.ID = IFT.UP_PROC_MASTER_ID)

                                WHERE UPM.ID IN (${procurementMasterId})  """

            Sql db = new Sql(dataSource)
            result = db.rows(query)

        }catch (Exception ex){
            log.error(ex.getMessage())
        }
        return result
    }

    @Transactional(readOnly = true)
    def getOtmIFQAndOpeningSheetDetailsValueByProcurementMaster(long procurementMasterId) {
        def result = null

        try {
            String query = """
                                SELECT UPM.DETAILS, OTMOS.OPENING_DATE, IFT.CREATED_DATE AS INVITATION_DATE
                                FROM UP_PROC_MASTER UPM
                                INNER JOIN IFT ON (UPM.ID = IFT.UP_PROC_MASTER_ID)
                                INNER JOIN UP_OTM_OPENING_SHEET OTMOS ON (OTMOS.UP_PROC_MASTER_ID = UPM.ID)

                                WHERE UPM.ID IN (${procurementMasterId})  """

            Sql db = new Sql(dataSource)
            result = db.rows(query)

        }catch (Exception ex){
            log.error(ex.getMessage())
        }
        return result
    }

    @Transactional(readOnly = true)
    public List getworkDetailsValueByProcurementMaster(long procurementMasterId) {
        List result = []

        try {
            String query = """
                                 SELECT UPM.DETAILS
                                        FROM UP_PROC_MASTER UPM

                                        WHERE UPM.ID IN (${procurementMasterId})   """

            Sql db = new Sql(dataSource)
            result = db.rows(query)

        }catch (Exception ex){
            log.error(ex.getMessage())
        }
        return result
    }

    @Transactional(readOnly = true)
    def getRfqOpeningSheetDateDetailsValueByProcurementMaster(long procurementMasterId) {
        def result = null

        try {
            String query = """
                                SELECT UPM.DETAILS, RFQOS.INVITATION_DATE, RFQOS.OPENING_DATE
                                FROM   UP_PROC_MASTER UPM
                                INNER JOIN UP_RFQ_OPENING_SHEET RFQOS ON (RFQOS.UP_PROC_MASTER_ID = UPM.ID)

                                WHERE UPM.ID IN (${procurementMasterId})  """

            Sql db = new Sql(dataSource)
            result = db.rows(query)

        }catch (Exception ex){
            log.error(ex.getMessage())
        }
        return result
    }
    @Transactional(readOnly = true)
    def convertBanglaToEnglish(String number){

        char[] chars=(""+number).toCharArray();
        char[] chars1=new char[100];
        int k=0;
        String vOf=String.valueOf(chars);
        for(int i=0;i<chars.length;i++)
        {
            if(chars[i]=='১')
            {chars1[k]='1';}
            else if(chars[i]=='২'){
                chars1[k]='2';}
            else if(chars[i]=='৩'){
                chars1[k]='3';}
            else if(chars[i]=='৪'){
                chars1[k]='4';}
            else if(chars[i]=='৫'){
                chars1[k]='5';}
            else if(chars[i]=='৬'){
                chars1[k]='6';}
            else if(chars[i]=='৭'){
                chars1[k]='7';}
            else if(chars[i]=='৮'){
                chars1[k]='8';}
            else if(chars[i]=='৯'){
                chars1[k]='9';}
            else if(chars[i]=='০'){
                chars1[k]='0';}
            else if(chars[i]=='.'){
                chars1[k]='.';}
            else
            {

            }
            k++;

        }
        String vof=String.valueOf(chars1);
        return vof

    }

    @Transactional(readOnly = true)
    def convertEnglishToBangla(int number){

        char[] chars=(""+number).toCharArray();
        char[] chars1=new char[100];
        int k=0;
        String vOf=String.valueOf(chars);
        for(int i=0;i<chars.length;i++)
        {
            if(chars[i]=='১')
            {chars1[k]='1';}
            else if(chars[i]=='২'){
                chars1[k]='2';}
            else if(chars[i]=='৩'){
                chars1[k]='3';}
            else if(chars[i]=='৪'){
                chars1[k]='4';}
            else if(chars[i]=='৫'){
                chars1[k]='5';}
            else if(chars[i]=='৬'){
                chars1[k]='6';}
            else if(chars[i]=='৭'){
                chars1[k]='7';}
            else if(chars[i]=='৮'){
                chars1[k]='8';}
            else if(chars[i]=='৯'){
                chars1[k]='9';}
            else if(chars[i]=='০'){
                chars1[k]='0';}
            else if(chars[i]=='.'){
                chars1[k]='.';}
            else
            {

            }
            k++;

        }
        String vof=String.valueOf(chars1);
        return vof

    }
}