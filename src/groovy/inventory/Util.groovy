package inventory

import org.codehaus.groovy.grails.commons.ApplicationHolder

import java.text.ParseException
import java.text.SimpleDateFormat

/**
 * Created by IntelliJ IDEA.
 * User: mmsunny
 * Date: 1/2/13
 * Time: 9:54 AM
 * To change this template use File | Settings | File Templates.
 */
class Util {
    private static String REPORT_DIRECTORY = null;
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
    public static String getReportDirectory() {
        if (!REPORT_DIRECTORY) {
            File reportFolder = ApplicationHolder.application.parentContext.getResource('/reports').file;
            REPORT_DIRECTORY = reportFolder.absolutePath;
        }
        return REPORT_DIRECTORY;
    }
}
