package hrms

import java.text.SimpleDateFormat
import java.text.ParseException

import java.util.Calendar;
import java.util.GregorianCalendar
import java.text.DateFormat
import org.joda.time.Days;

/**
 * Created by IntelliJ IDEA.
 * User: kcbarmon
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

    def static getMonth(String date) {

        if (date == null) {
            return null;
        }
        SimpleDateFormat df = new SimpleDateFormat("d/M/yyyy");
        try {

            java.util.Date today = df.parse(date);
            //System.out.println("Month..." + today.month.toString());

            return today.month;

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }
    // -- end from text to date conversion method here -------------------
    //   // -- start from text to date conversion method here -------------------
    def static getDateMonddyy(String date) {

        if (date == null) {
            return null;
        }
        SimpleDateFormat df = new SimpleDateFormat("d/M/yy");
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
            //System.out.println("today..." + year);

            return year;

        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }
    // -- end from text to date conversion method here -------------------
    def static getLastDate(int month,int year) {
            Calendar calendar = Calendar.getInstance();

            calendar.set(Calendar.MONTH, month-1);
            calendar.set(Calendar.DATE, calendar.getActualMaximum(Calendar.DATE));

            Date date = calendar.getTime();
            DateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy");
            return DATE_FORMAT.format(date);
    }


    def static  getFirstDay(Date d) throws Exception
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(d);
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        Date dddd = calendar.getTime();
        SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
        return sdf1.format(dddd);
    }

    def static getLastDay(Date d) throws Exception
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(d);
        calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
        Date dddd = calendar.getTime();
        SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
        return sdf1.format(dddd);
    }

    def static getNextMonthDate(Date d,int monthAdded) throws Exception
    {
        String dt = "";  // Start date
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(d);
        calendar.add(Calendar.MONTH, monthAdded);  // number of Month to add
        dt = sdf.format(calendar.getTime());  // dt is now the new date

        return dt;
    }
    def static getDateDifference(Date startDate,Date endDate) throws Exception
    {
        int ttlDay = (int)(( (endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24) )) +1 ;
        return ttlDay;
    }
    def static getMonthDifference(Date startDate,Date endDate) throws Exception
    {
        int m1 = startDate.getYear() * 12 + startDate.getMonth();
        int m2 = endDate.getYear() * 12 + endDate.getMonth();
        return m2 - m1 + 1;
    }
}