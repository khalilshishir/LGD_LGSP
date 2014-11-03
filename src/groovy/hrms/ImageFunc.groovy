package hrms

import org.codehaus.groovy.grails.commons.ApplicationHolder;

/**
 * Created by IntelliJ IDEA.
 * User: kcbarmon
 * Date: 1/9/13
 * Time: 2:40 PM
 * To change this template use File | Settings | File Templates.
 */

class ImageFunc {

    private static String REPORT_DIRECTORY = null;
    public static String getReportDirectory() {
        if (!REPORT_DIRECTORY) {
            File reportFolder = ApplicationHolder.application.parentContext.getResource('/employeeImage').file;
            REPORT_DIRECTORY = reportFolder.absolutePath;
        }
        return REPORT_DIRECTORY;
    }
    // -- end from text to date conversion method here -------------------

}
