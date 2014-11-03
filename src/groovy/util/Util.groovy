package util

import java.lang.reflect.Field
import java.text.ParseException
import java.text.SimpleDateFormat
import org.codehaus.groovy.grails.commons.ApplicationHolder

class Util {

    def static final calDays = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    /**
     *  String to java.util.Date Converter.
     * @param date String date value
     * @return java.util.Date
     *
     */
    private static String REPORT_DIRECTORY = null;
    private static String IMAGE_DIRECTORY = null;
    public static String getReportDirectory() {
        if (!REPORT_DIRECTORY) {
            File reportFolder = ApplicationHolder.application.parentContext.getResource('/reports').file;
            REPORT_DIRECTORY = reportFolder.absolutePath;
        }
        return REPORT_DIRECTORY;
    }

    public static String getImageDirectory() {
        if (!IMAGE_DIRECTORY) {
            File reportFolder = ApplicationHolder.application.parentContext.getResource('/images/repository/HrCrEmp/PIC_').file;
            IMAGE_DIRECTORY = reportFolder.absolutePath;
        }
        return IMAGE_DIRECTORY;
    }

    def static getDateMonddyyyyHHmin(String date) {

        if (date == null) {
            return null;
        }
        SimpleDateFormat df
        if(date.contains('-'))
            df= new SimpleDateFormat("yyyy-M-d HH:mm");
        else if(date.contains(':')){
            df=new SimpleDateFormat("d/M/yyyy HH:mm");
        }
        else
            df = new SimpleDateFormat("d/M/yyyy HH:mm");
        try {

            java.util.Date today = df.parse(date);
            System.out.println("today..." + today.toString());

            return today;

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    def static GetCurrentDateMonddyyyyHHmin() {

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        Date date = new Date();

        System.out.println(dateFormat.format(date));

        return date;
    }

    def static GetMonDayYearFormate(String date){
        if (date == null) {
            return null;
        }
        SimpleDateFormat df = new SimpleDateFormat("M/d/yyyy");
        try {

            java.util.Date today = df.parse(date);
            System.out.println("today..." + today.toString());

            return today;

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    def static getDateMonddyyyy(String date) {

        if (date == null) {
            return null;
        }
        SimpleDateFormat df = new SimpleDateFormat("d/M/yyyy");
        try {

            java.util.Date today = df.parse(date);
            System.out.println("today..." + today.toString());

            return today;

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     public static String getQuery(Object className, String srchStr) {return getQuery(className.getClass().getName(), srchStr);}public static String getQuery(String className, String srchStr) {try {//String srchStr = "  ";
     //srchStr = "12";
     //srchStr = "12.13";
     //srchStr = "abc";
     //srchStr = "12/12/2012";

     srchStr = srchStr.trim();

     if (srchStr.length() == 0) {return "SELECT n FROM " + className + " n";}Class dd = Class.forName(className);

     String ss = "SELECT n FROM " + className + " n WHERE ";

     for (Field string : dd.getDeclaredFields()) {//System.out.println("KKKS:" + string.getName() + " KKKT:" + string.getType().getSuperclass() + " ggg:" + string.getType());

     if (string.getType().getName().equals("java.lang.String")) {ss += "\n\tn." + string.getName() + " LIKE '%" + srchStr + "%' OR ";} else if (string.getType().getName().equals("java.lang.Long")) {Long ff = null;
     try {ff = Long.parseLong(srchStr);} catch (Exception e) {}if (ff != null) {ss += "\n\tn." + string.getName() + " = " + ff + " OR ";}} else if (string.getType().getName().equals("java.lang.Double")) {Double ff = null;
     try {ff = Double.parseDouble(srchStr);} catch (Exception e) {}if (ff != null) {ss += "\n\tn." + string.getName() + " = " + ff + " OR ";}} else if (string.getType().getName().equals("java.lang.Integer")) {Integer ff = null;
     try {ff = Integer.parseInt(srchStr);} catch (Exception e) {}if (ff != null) {ss += "\n\tn." + string.getName() + " = " + ff + " OR ";}} else if (string.getType().getName().equals("java.util.Date")) {Long dtLn = null;
     try {SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
     java.util.Date ssDt = sdf.parse(srchStr);
     dtLn = ssDt.getTime();} catch (Exception e) {}if (dtLn != null) {ss += "\n\tn." + string.getName() + ".getTime() = " + dtLn + "L OR ";}} else {ss += "\n\tn." + string.getName() + ".toString() LIKE '%" + srchStr + "%' OR ";}}int lsInd = 0;
     if ((lsInd = ss.lastIndexOf(" OR ")) != -1) {ss = ss.substring(0, lsInd);}//System.out.println(ss);

     return ss;} catch (Exception e) {return "Don't Ask: " + e;}}*/

    /**
     * This is a generalize HQL query generator to search record from all column of a table.
     *
     * @param clazz Domain class
     * @param srchStr String value for search in table
     * @return generated query in string
     */
    def static String getQuery(Class clazz, String srchStr) {
        try {
            //String srchStr = "  ";
            //srchStr = "12";
            //srchStr = "12.13";
            //srchStr = "abc";
            //srchStr = "12/12/2012";

            def className = clazz.getName();

            srchStr = srchStr.trim();

            if (srchStr.length() == 0) {
                return "SELECT n FROM " + className + " n";
            }

            String ss = "SELECT n FROM " + className + " n WHERE ";

            for (Field string: clazz.getDeclaredFields()) {
//                System.out.println("KKKS:" + string.getName() + " KKKT:" + string.getType().getSuperclass() + " ggg:" + string.getType().getName());
                //                System.out.println( "  12:18  " + string.getModifiers()+" - " +string.getName());

                if (string.getModifiers() != 2) {continue;}

                if (string.getType().getName().equals("java.lang.String")) {
                    ss += "\n\tn." + string.getName() + " LIKE '%" + srchStr + "%' OR ";
                } else if (string.getType().getName().equals("java.lang.Long")) {

                    Long ff = null;
                    try {
                        ff = Long.parseLong(srchStr);
                    } catch (Exception e) {
                    }
                    if (ff != null) {
//                        ss += "\n\tn." + string.getName() + " = " + ff + " OR ";
                        ss += "\n\tstr(n." + string.getName() + ") Like " + ff + "L OR ";
                    }
                } else if (string.getType().getName().equals("java.lang.Double")) {

                    Double ff = null;
                    try {
                        ff = Double.parseDouble(srchStr);
                    } catch (Exception e) {
                    }
                    if (ff != null) {
//                        ss += "\n\tn." + string.getName() + " = " + ff + "D OR ";
                        ss += "\n\tstr( n." + string.getName() + ") Like  " + ff + "D OR ";
                    }
                } else if (string.getType().getName().equals("java.lang.Float")) {

                    Float ff = null;
                    try {
                        ff = Float.parseFloat(srchStr);
                    } catch (Exception e) {
                    }
                    if (ff != null) {
//                        ss += "\n\tn." + string.getName() + " = " + ff + "F OR ";
                        ss += "\n\tstr(n." + string.getName() + ") Like " + ff + "F OR ";
                    }
                } else if (string.getType().getName().equals("java.lang.Integer")) {

                    Integer ff = null;
                    try {
                        ff = Integer.parseInt(srchStr);
                    } catch (Exception e) {
                    }

                    if (ff != null) {
//                        ss += "\n\tn." + string.getName() + " = " + ff + " OR ";
                        ss += "\n\tstr(n." + string.getName() + ") Like " + ff + " OR ";
                    }
                } else if (string.getType().getName().equals("java.util.Date")) {
                    Long dtLn = null;
                    try {
                        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                        java.util.Date ssDt = sdf.parse(srchStr);
                        dtLn = ssDt.getTime();
                    } catch (Exception e) {
                    }
                    if (dtLn != null) {
                        ss += "\n\tn." + string.getName() + " = to_date('" + srchStr + "', 'DD.MM.YYYY') OR ";
                    }
                } else {
                    try {
                        Long l = Long.parseLong(srchStr)
                        ss += "\n\tn." + string.getName() + ".code Like '%" + srchStr + "%' OR ";
                    } catch (Exception ex) {

                    }
                }
            }
            int lsInd = 0;
            if ((lsInd = ss.lastIndexOf(" OR ")) != -1) {
                ss = ss.substring(0, lsInd);
            }
            System.out.println(ss);

            return ss;
        } catch (Exception e) {
            System.out.println("Don't Ask: " + e);
            return null;
        }
    }

    /**
     * This will generate 4 digit random number. Code will create with add prefix to this number.
     * But this will be changed after a certain period. Code will generate as per DB value.
     * @param prefix codePrefix
     * @return code
     */
    def static getCode(prefix) {
        def codeNum = 1000 + (int) (Math.random() * 9000);
        System.out.println("code..." + codeNum);
        return prefix + codeNum
    }


    def static generateColumnMap(weeks){
        Map  columnMap = new HashMap();

        int j=65
        columnMap.put(String.valueOf(Character.toChars(j)), "Product")
        j++
        for(int i=0; i<weeks.size(); i++){

           def calWeek = weeks.get(i)
           def label = calWeek.title + " "+ calWeek.calPeriodIdCalPeriod.title+ " "+ calWeek.calPeriodIdCalPeriod.calQuarterIdCalQuarter.calYearIdCalYear.title
           columnMap.put(String.valueOf(Character.toChars(j)), label)
            j++
        }
       return columnMap
    }


}