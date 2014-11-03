package hrms

/**
 * Created by IntelliJ IDEA.
 * User: kcbarmon
 * Date: 1/14/13
 * Time: 5:31 PM
 * To change this template use File | Settings | File Templates.
 */
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Utility {

    public Date parseDate(String date, String format) {
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        try {
            return formatter.parse(date);
        } catch (ParseException pe) {
            pe.printStackTrace();
            return null;
        }

    }

    public int differenceBetweenTwoDate(Date startDate, Date endDate) {
        return (int) (startDate.getTime() - endDate.getTime()) / (1000 * 60 * 60 * 24);
    }

}
