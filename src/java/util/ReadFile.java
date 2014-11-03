package util;

/**
 * Created by IntelliJ IDEA.
 * User: CSM-USER
 * Date: 11/21/13
 * Time: 4:40 PM
 * To change this template use File | Settings | File Templates.
 */

import java.io.*;
import java.text.DecimalFormat;
import java.util.Calendar;

public class ReadFile {

    static  String  delimiter="@MARUF@";

    /*public static String readTxtFile(String filePath,String fileNameStr){
        BufferedReader br=null;
        StringBuilder sb ;
        String txtString="";

        String [] fileName=fileNameStr.split(delimiter) ;

        for(int i=0;fileName.length>i;i++){
            try{
                System.out.println("fileName[i] "+i+" : "+fileName[i]);

                br=new BufferedReader(new FileReader(filePath+fileName[i])); //"C:\\m\\"
                String line=null;
                txtString="<"+fileName[i]+">";
                while((line=br.readLine())!=null){
                    //System.out.println("line :"+line);
                    System.out.println("|txtString : "+txtString);
                    sb = new StringBuilder();
                    sb.append(line.trim());
                    txtString=txtString+sb.toString()+delimiter;

                }
            }
            catch(FileNotFoundException e){
                e.printStackTrace();
            }
            catch(IOException e)
            {
                e.printStackTrace();
            }
        }

        System.out.println("|txtString : "+txtString);
        return txtString;
    } */

    public static String getTxtFileData(String filePath,String fileNameStr){
        String txtString="";
        String [] fileName=fileNameStr.split(delimiter) ;

        for(int i=0;fileName.length>i;i++){
            txtString=txtString+readTxtFile(filePath,fileName[i]);
        }

       // System.out.println("|txtString : "+txtString);
        return txtString;
    }

    public static String readTxtFile(String filePath,String fileName){
        BufferedReader br=null;
        StringBuilder sb ;
        String txtString="<"+fileName+">";

            try{
                br=new BufferedReader(new FileReader(filePath+fileName)); //"C:\\m\\"
                String line=null;
                while((line=br.readLine())!=null){
                    //System.out.println("line :"+line);
                    //System.out.println("|txtString : "+txtString);
                    sb = new StringBuilder();
                    sb.append(line.trim());
                    txtString=txtString+sb.toString()+delimiter;
                }
            }
            catch(FileNotFoundException e){
                e.printStackTrace();
            }
            catch(IOException e)
            {
                e.printStackTrace();
            }

        txtString=txtString+"<"+fileName+"/>";
        return txtString;
    }

    public static String fileChecker(String fileDetail){
        BufferedReader br=null;
        StringBuilder sb ;
        String isExists="";
        File f = new File(fileDetail);

        if(f.exists()){
            isExists="exist";
        }else{
            isExists="notExist";
        }
        return isExists;
    }



    public static String getFilenameWithFilePath(String fileDetail,String extension) {
        File dir = new File(fileDetail);
        for (File file : dir.listFiles()) {
            String filePath = file.getPath();
            if (file.isFile() && filePath.endsWith(extension)) {
                return filePath;
            }
        }

        return null;
    }

    public static String getFirstFilename(String fileDetail) {
        File dir = new File(fileDetail);

        String[] filesList = dir.list();
        if (filesList == null) {
            // Either dir does not exist or is not a directory
        } else {
            for (int i = 0; i < filesList.length; i++) {
                // Get filename of file or directory
                String filename = filesList[i];
            }
        }
        String fileFullName = filesList[0];

        return fileFullName;
    }

    public static String getLastFilename(String fileDetail) {
        File dir = new File(fileDetail);

        String[] filesList = dir.list();
        if (filesList == null) {
            // Either dir does not exist or is not a directory
        } else {
            for (int i = 0; i < filesList.length; i++) {
                // Get filename of file or directory
                String filename = filesList[i];
                System.out.println("filename "+i+" : "+filename);
            }
        }
        String fileFullName = filesList[filesList.length-1];

        return fileFullName;
    }



    public static String getFileList(String filePath,String filenameStr) {
        File dir = new File(filePath);
        System.out.println("filePath "+filePath);
        String filename="";
        String[] filesList = dir.list();
        if (filesList == null) {
            // Either dir does not exist or is not a directory
        } else {
            for (int i = 0; i < filesList.length; i++) {
                //Check Whether the given string exist in the file name.
                Boolean isExist= checkStrExistence(filesList[i],filenameStr);
                System.out.println("isExist "+isExist);
                //If exist get the file name
                if(isExist){
                    System.out.println("filename "+i+" : "+filename);
                     filename =filename+ filesList[i]+delimiter;
                } else{
                    continue;
                }
            }
        }

        return filename;
    }




    public static Boolean checkStrExistence(String mainStr,String checkStr){
        Boolean result=true;
        // Anywhere
        result = mainStr.contains(checkStr) ;         // true
        return result;
    }



    public static String createFilename() {
        String filename="";
        Calendar now = Calendar.getInstance();
        int year = now.get(Calendar.YEAR);
        int month = now.get(Calendar.MONTH)+1; // Note: zero based!
        String monthStr=changeDigit("00",month);
        int day = now.get(Calendar.DAY_OF_MONTH);
        String dayStr=changeDigit("00",day);
        int hour = now.get(Calendar.HOUR_OF_DAY);
        String hourStr=changeDigit("00",hour);
        int minute = now.get(Calendar.MINUTE);
        String minuteStr=changeDigit("00",minute);
        int second = now.get(Calendar.SECOND);
        String secondStr=changeDigit("00",second);
        int millis = now.get(Calendar.MILLISECOND);
        String millisStr=changeDigit("00",millis);

        String ID =changeDigit("000000000",1532);

        filename= year+monthStr+dayStr+hourStr+minuteStr+secondStr;
       return filename  ;
    }

    public static String getCurrentDateTime() {
        String filename="";
        Calendar now = Calendar.getInstance();
        int year = now.get(Calendar.YEAR);
        int month = now.get(Calendar.MONTH)+1; // Note: zero based!
        String monthStr=changeDigit("00",month);
        int day = now.get(Calendar.DAY_OF_MONTH);
        String dayStr=changeDigit("00",day);
        int hour = now.get(Calendar.HOUR_OF_DAY);
        String hourStr=changeDigit("00",hour);
        int minute = now.get(Calendar.MINUTE);
        String minuteStr=changeDigit("00",minute);
        int second = now.get(Calendar.SECOND);
        String secondStr=changeDigit("00",second);
        int millis = now.get(Calendar.MILLISECOND);
        String millisStr=changeDigit("00",millis);

        String ID =changeDigit("000000000",1532);

        filename="Year "+ year+" Month "+ monthStr +" day "+ dayStr+" hour "+hourStr+" minute "+minuteStr+" second "+ secondStr+" millis "+ millisStr+" ID "+ID;
       return filename  ;
    }

    public static String changeDigit(String decimalNo,Integer val) {
        String result="";
        result= new DecimalFormat(decimalNo).format(val);
        return result;
    }

    public static String readData(String mainStr,Integer firstIndex,Integer secIndex){
      //  mainStr="0012111131258010000001551011";
        String returnStr=mainStr.substring(firstIndex,secIndex) ;
        return returnStr;
    }
    public static String getStr(String mainStr,String firstStr,String secStr){
        String result="";
        // Anywhere
        result = mainStr.substring(mainStr.indexOf(firstStr)+firstStr.length(),mainStr.indexOf(secStr)) ;         // true
        return result;
    }

    /*public static void main(String[] args)
    {
*//*        System.out.println("isExists : "+ fileChecker("C:\\20131121130741.001"));
        System.out.println("TXT String : "+ readTxtFile(getFileList("C:\\m","2013112")));

        System.out.println("getFilenameWithFilePath : "+ getFilenameWithFilePath("C:\\m",".001"));
        System.out.println("getFirstFilename : "+ getFirstFilename("C:\\m"));
        System.out.println("getLastFilename : "+ getLastFilename("C:\\m"));
        System.out.println("createFilename : "+ createFilename());
        System.out.println("getCurrentDateTime : "+ getCurrentDateTime());
        System.out.println("getFileList : "+ getFileList("C:\\m","2013112"));
        System.out.println("readData : "+ readData("0012111131258010000001551011",0,3));*//*

*//*        String mainStr="<20131121130741.001>0012111131257520000000000000�@MARUF@0012111131257560000000000000�@MARUF@0012111131258010000001551011�@MARUF@0012111131258040000000000000�@MARUF@0012111131258090000001551011��@MARUF@0012111131258130000001551011�@@MARUF@0012111131258200000001551011��@MARUF@0012111131258300000001551011�@MARUF@0012111131258380000000000000�:@MARUF@0012111131258480000001551011�@MARUF@0012111131259140000000000000��@MARUF@0012111131259190000001551011�!@MARUF@0012111131259370000000000000��@MARUF@0012111131259420000000000000��@MARUF@0012111131259470000001551011�:@MARUF@0012111131300010000001551011�R@MARUF@0012111131300070000000000000�B@MARUF@0012111131300150000000000000�{@MARUF@0012111131300210000001551011�Z@MARUF@0012111131300380000001551011�m@MARUF@0012111131300560000000000000�e@MARUF@0012111131307190000000000000�@MARUF@0012111131307240000001551011��@MARUF@0012111131307300000001551011�\u000241@MARUF@<20131121130741.001/><20131121130742.001>0012111131257520000000000000�@MARUF@0012111131257560000000000000�@MARUF@0012111131258010000001551011�@MARUF@0012111131258040000000000000�@MARUF@0012111131258090000001551011��@MARUF@0012111131258130000001551011�@@MARUF@0012111131258200000001551011��@MARUF@0012111131258300000001551011�@MARUF@0012111131258380000000000000�:@MARUF@0012111131258480000001551011�@MARUF@0012111131259140000000000000��@MARUF@0012111131259190000001551011�!@MARUF@0012111131259370000000000000��@MARUF@0012111131259420000000000000��@MARUF@0012111131259470000001551011�:@MARUF@0012111131300010000001551011�R@MARUF@0012111131300070000000000000�B@MARUF@0012111131300150000000000000�{@MARUF@0012111131300210000001551011�Z@MARUF@0012111131300380000001551011�m@MARUF@0012111131300560000000000000�e@MARUF@0012111131307190000000000000�@MARUF@0012111131307240000001551011��@MARUF@0012111131307300000001551011�\u000242@MARUF@<20131121130742.001/><20131121130743.001>0012111131257520000000000000�@MARUF@0012111131257560000000000000�@MARUF@0012111131258010000001551011�@MARUF@0012111131258040000000000000�@MARUF@0012111131258090000001551011��@MARUF@0012111131258130000001551011�@@MARUF@0012111131258200000001551011��@MARUF@0012111131258300000001551011�@MARUF@0012111131258380000000000000�:@MARUF@0012111131258480000001551011�@MARUF@0012111131259140000000000000��@MARUF@0012111131259190000001551011�!@MARUF@0012111131259370000000000000��@MARUF@0012111131259420000000000000��@MARUF@0012111131259470000001551011�:@MARUF@0012111131300010000001551011�R@MARUF@0012111131300070000000000000�B@MARUF@0012111131300150000000000000�{@MARUF@0012111131300210000001551011�Z@MARUF@0012111131300380000001551011�m@MARUF@0012111131300560000000000000�e@MARUF@0012111131307190000000000000�@MARUF@0012111131307240000001551011��@MARUF@0012111131307300000001551011�\u000243@MARUF@<20131121130743.001/>" ;
        String firstStr="<20131121130741.001>";
        String secStr="<20131121130741.001/>";

        int firstStrInd=mainStr.indexOf(firstStr);
        int secStrInd=mainStr.indexOf(secStr);
        System.out.println("firstStrInd : "+ firstStrInd);
        System.out.println("secStrInd : "+ secStrInd);
        System.out.println("getStr : "+ getStr(mainStr,firstStr,secStr));*//*


    }*/
}

