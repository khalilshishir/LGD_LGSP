package hrms

/**
 * Created by IntelliJ IDEA.
 * User: kcbarmon
 * Date: 1/20/13
 * Time: 2:58 PM
 * To change this template use File | Settings | File Templates.
 */
import java.util.Calendar;
import java.util.GregorianCalendar;


/**
 * This class demonstrates on how to add months to a date
 * @author JavaIQ.net
 * Creation Date Dec 3, 2010
 */
public class AddMonthsToDate {

    /**
     * Adds the required number of months to the date
     */
    public static java.sql.Date addMonths(final java.util.Date date, final int months) {
        java.sql.Date calculatedDate = null;

        if (date != null) {
            final GregorianCalendar calendar = new GregorianCalendar();
            calendar.setTime(date);
            calendar.add(Calendar.MONTH, months);
            calculatedDate = new java.sql.Date(calendar.getTime().getTime());
        }

        return calculatedDate;
    }

}
