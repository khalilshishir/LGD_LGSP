package accounts

import java.text.ParseException
import java.text.SimpleDateFormat
import org.codehaus.groovy.grails.commons.ApplicationHolder

/**
 * Created by IntelliJ IDEA.
 * User: kmmrashid
 * Date: 1/9/13
 * Time: 2:40 PM
 * To change this template use File | Settings | File Templates.
 */


/**
 *  String to java.util.Date Converter.
 * @param date String date value
 * @return java.util.Date
 */

class Util {
    private static String REPORT_DIRECTORY = null;
    public static String getReportDirectory() {
        if (!REPORT_DIRECTORY) {
            File reportFolder = ApplicationHolder.application.parentContext.getResource('/reports').file;
            REPORT_DIRECTORY = reportFolder.absolutePath;
        }
        return REPORT_DIRECTORY;
    }

    public static String getOSInfo() {
        String osName=System.properties['os.name']
        return osName;
    }
    // -- start from text to date conversion method here -------------------
    def static getDateMonddyyyy(String date) {

        if (date == null) {
            return null;
        }
        SimpleDateFormat df = new SimpleDateFormat("d/M/yyyy");
        try {

            java.util.Date today = df.parse(date);
            //System.out.println("today..." + today.toString());

            return today;

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }
    // -- end from text to date conversion method here -------------------

    def static getDateStr(String date) {

        if (date == null) {
            return null;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {

            Calendar c1 = Calendar.getInstance();

            String[] dateArr=date.split("/")
            int dayStr=Integer.parseInt(dateArr[0])
            int monthStr= Integer.parseInt(dateArr[1]) -1
            int yearStr= Integer.parseInt(dateArr[2])

            c1.set(yearStr, monthStr,dayStr); // 1999 jan 20     18/07/2013
            // System.out.println("Date is : " + sdf.format(c1.getTime()));
            c1.add(Calendar.YEAR,-1);   // or  Calendar.DAY_OF_MONTH which is a synonym
            System.out.println("Date + before 1 year is : " + sdf.format(c1.getTime()));

            return sdf.format(c1.getTime());

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    def static getDateForExcel(String date) {    // Coming 2013-02-09(yyyy-dd-mm)(Controller Print) against 2/9/2013(dd/mm/yyyy)(Excel Value)

            String[] dateArr=date.split("-")       //2013-10-09
            int yearStr=Integer.parseInt(dateArr[0])
            int dayStr= Integer.parseInt(dateArr[1])
            int monthStr= Integer.parseInt(dateArr[2])
            println("dayStr :"+dayStr+" monthStr :"+monthStr+" yearStr :"+yearStr)
            String ddMMyyyy= dayStr+"/"+monthStr+"/"+yearStr

            return ddMMyyyy;

    }

    def static getDateForExcel2(String date) {    // Coming 2013-02-09(yyyy-mm-dd)(Controller Print) against 2/9/2013(dd/mm/yyyy)(Excel Value)

        String[] dateArr=date.split("-")       //2013-10-09
        int yearStr=Integer.parseInt(dateArr[0])
        int dayStr= Integer.parseInt(dateArr[2])
        int monthStr= Integer.parseInt(dateArr[1])
        println("dayStr :"+dayStr+" monthStr :"+monthStr+" yearStr :"+yearStr)
        String ddMMyyyy= dayStr+"/"+monthStr+"/"+yearStr

        return ddMMyyyy;

    }

    def static changeFormat(String date) {    // Coming 2013-02-09(yyyy-mm-dd)(Controller Print) against 2/9/2013(dd/mm/yyyy)(Excel Value)

        String[] dateArr=date.split("-")       //2013-10-09

        int dayStr= Integer.parseInt(dateArr[0])
        int monthStr= Integer.parseInt(dateArr[1])
        int yearStr=Integer.parseInt(dateArr[2])
        println("dayStr :"+dayStr+" monthStr :"+monthStr+" yearStr :"+yearStr)
        String ddMMyyyy= dayStr+"/"+monthStr+"/"+yearStr

        return ddMMyyyy;

    }



    def static Boolean checkStrExistence(String mainStr,String checkStr){
        Boolean result=true;
        // Anywhere
        result = mainStr.indexOf(checkStr) > 0;         // true
        return result;
    }




    def static getDateAccordingToProvidedDayMonthYear(String date,int day,int month,int year) {

        if (date == null) {
            return null;
        }
        SimpleDateFormat df = new SimpleDateFormat("d/M/yyyy");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {

            String[] dateArr=date.split("/")
            int dayStr=Integer.parseInt(dateArr[0])
            int monthStr= Integer.parseInt(dateArr[1])
            int yearStr= Integer.parseInt(dateArr[2])
            System.out.println("String " + dayStr+"/"+monthStr+"/"+yearStr); //2012-08-18
            System.out.println("String " + day+"/"+month+"/"+year);
            Calendar c1 = Calendar.getInstance();
            c1.set(yearStr, monthStr,dayStr); // 1999 jan 20     18/07/2013    //dd/mm/yyyy
            if(day!=0){
                c1.add(Calendar.DATE,day);   // or  Calendar.DAY_OF_MONTH which is a synonym
                System.out.println("day " + day);
            }
            if(month!=0){
                c1.add(Calendar.MONTH,month);   // or  Calendar.DAY_OF_MONTH which is a synonym
                System.out.println("month " + month);
            }
            if(year!=0){
                c1.add(Calendar.YEAR,-12);   // or  Calendar.DAY_OF_MONTH which is a synonym
                System.out.println("Year " + year);
            }

            System.out.println("New Date: yyyy-MM-dd " + sdf.format(c1.getTime())); //2012-08-18
            String[] newDateArr=sdf.format(c1.getTime()).split("-")
            String newYearStr=newDateArr[0]
            String newMonthStr= newDateArr[1]
            String newDayStr= newDateArr[2]

            String newDate= newDayStr+"/"+newMonthStr +"/"+ newYearStr
            System.out.println("New Date: d/M/yyyy " + newDate);

            java.util.Date today = df.parse(newDate);
            System.out.println("today... " + today.toString());

            return today;

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    static String[] dfa = ["dd-MM-yyyy hh:mm:ss a", "dd/MM/yyyy hh:mm:ss a","dd/MM/yyyy", "d/M/yyyy", "yyyy-MM-dd hh:mm:ss.S", "d/M/yy", "yyyy-MM-dd hh:mm:ss", "yyyy-MM-dd", "dd-MMM-yy", "dd-MMM-yyyy", "MM-dd-yy hh:mm:ss"];

    def static getDatex(Object date) throws Exception {
        if (date == null || date.toString().trim().length() == 0) {
            return null
        }

        for (String dts : dfa) {
            try {
                return (new SimpleDateFormat(dts)).parse(date.toString())
            } catch (ParseException ec) {}
        }

        throw new Exception("Date Format not macth, Man!!!")
    }

    //   // -- start from text to date conversion method here -------------------
    def static getDateMonddyy(String date) {

        if (date == null) {
            return null;
        }
        SimpleDateFormat df = new SimpleDateFormat("d/M/yy");
        try {

            java.util.Date today = df.parse(date);
            System.out.println("today..." + today.toString());

            return today;

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }
    // -- end from text to date conversion method here -------------------

    //   // -- start from text to date conversion method here -------------------
    def static getYear(String date) {

        if (date == null) {
            return null;
        }
        SimpleDateFormat df = new SimpleDateFormat("d/M/yy");
        try {

            Date ndate = df.parse(date);
            SimpleDateFormat ndf = new SimpleDateFormat("yyyy");
            String year = ndf.format(ndate);
            System.out.println("today..." + year);

            return year;

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }
    // -- end from text to date conversion method here -------------------


}
