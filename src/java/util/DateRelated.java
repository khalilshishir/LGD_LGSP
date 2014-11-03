package util;

/**
 * Created by IntelliJ IDEA.
 * User: CSM-USER
 * Date: 9/15/13
 * Time: 3:58 PM
 * To change this template use File | Settings | File Templates.
 */
public class DateRelated {




    public static String getMonName(String str) {
        if (str.equals("01")){
            return "JAN" ;
        }
        else if (str.equals("02")){
            return "FEB" ;
        }
        else if (str.equals("03")){
            return "MAR" ;
        }
        else if (str.equals("04")){
            return "APR"  ;
        }
        else if (str.equals("05")){
            return "MAY"   ;
        }
        else if (str.equals("06")){
            return "JUN";
        }
        else if (str.equals("07")){
            return "JUL";
        }
        else if (str.equals("08")){
            return "AUG";
        }
        else if (str.equals("09")){
            return "SEP";
        }
        else if (str.equals("10")){
            return "OCT" ;
        }
        else if (str.equals("11")){
            return "NOV" ;
        }
        else if (str.equals("12")){
            return "DEC";
        }else{
            return "EMPTY";
        }
    }

    public static String getFullMonthName(Integer str) {
        if (str==1){
            return "January" ;
        }
        else if (str==2){
            return "February" ;
        }
        else if (str==3){
            return "March" ;
        }
        else if (str==4){
            return "April"  ;
        }
        else if (str==5){
            return "May"   ;
        }
        else if (str==6){
            return "June";
        }
        else if (str==7){
            return "July";
        }
        else if (str==8){
            return "August";
        }
        else if (str==9){
            return "September";
        }
        else if (str==10){
            return "October" ;
        }
        else if (str==11){
            return "November" ;
        }
        else if (str==12){
            return "December";
        }else{
            return "Empty";
        }
    }

   public static String changeDateForProcedure(String dateStr){        // For dd/mm/yyyy to 01-JAN-2014(dd-Mon-yyyy)  date format
       String[] DATE_STR_AR=dateStr.split("/");
       String DAY=DATE_STR_AR[0];
       String MONTH=getMonName(DATE_STR_AR[1]);
       String YEAR=DATE_STR_AR[2];
       String DATE=DAY+"-"+MONTH+"-"+YEAR ;
       //System.out.println(" DATE : "+DATE);
       return DATE;
   }
    public static String changeDateForProcedure2(String dateStr){      //For 10-03-2014 date format
       String[] DATE_STR_AR=dateStr.split("-");
       String DAY=DATE_STR_AR[0];
       String MONTH=getMonName(DATE_STR_AR[1]);
       String YEAR=DATE_STR_AR[2];
       String DATE=DAY+"-"+MONTH+"-"+YEAR ;
       //System.out.println(" DATE : "+DATE);
       return DATE;
   }

    public static String changeDateForExcel(String dateStr){      //For 2014-03-21(yyyy-mm-dd) to dd/mm/yyyy  date format
       String[] DATE_STR_AR=dateStr.split("-");
       String DAY=DATE_STR_AR[2];
       String MONTH=getMonName(DATE_STR_AR[1]);
       String YEAR=DATE_STR_AR[0];
       String DATE=DAY+"-"+MONTH+"-"+YEAR ;
       //System.out.println(" DATE : "+DATE);
       return DATE;
   }

    public static String changeDateForProcedure3(String dateStr){      //For dd/mm/yyyy date format to yyyymmdd
        String[] DATE_STR_AR=dateStr.split("/");
        String DAY=DATE_STR_AR[0];
        String MONTH=DATE_STR_AR[1];
        String YEAR=DATE_STR_AR[2];
        String DATE=YEAR+MONTH+DAY ;
        System.out.println(" DATE : "+DATE);
        return DATE;
    }

    public static Boolean checkStrExistence(String mainStr,String checkStr){
       Boolean result=true;
        // Anywhere
        result = mainStr.indexOf(checkStr) > 0;         // true
       return result;
   }






/*    public static void main(String var[]){
       // System.out.println("New Date :"+ changeDateForProcedure("11/09/2013"));
        System.out.println("Check Result :"+ checkStrExistence("11/09/2013","-"));

    }*/
}
