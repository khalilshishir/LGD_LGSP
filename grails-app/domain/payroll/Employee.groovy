package payroll

import lookUp.AllLookup
import settings.Division
import settings.District
import settings.Upazila

class Employee {
    static mapping = {
        table('HR_EMPLOYEE')
        version(false)
    }
    long id
    String EMPLOYEE_ID
    String EMPLOYEE_NAME
    Designation DESIGNATION_ID
    Department DEPARTMENT_ID
    AllLookup EMPLOYEE_TYPE_ID
    AllLookup RELIGION_NAME_ID
    AllLookup BLOOD_GROUP_ID
    AllLookup MARITAL_STATUS_ID
    AllLookup NATIONALITY_ID
    AllLookup GENDER_ID
    String PERSONAL_FILE_NO
    Date JOINING_DATE = new Date()
    Date CONFIRMATION_DATE = new Date()
    Date SERVICE_END_DATE = new Date()
    Date LAST_INCREMENT_DATE = new Date()
    Date NEXT_INCREMENT_DATE = new Date()
    String TIN
    AllLookup PAYMENT_TYPE
    String BANK_AC_NO
    String BANK_NAME
    String FATHER_NAME
    String MOTHER_NAME
    String SPOUSE_NAME
    Date DATE_OF_BIRTH = new Date()
    String NATIONAL_ID
    String PASSPORT_NO
    String DRIVING_LICIENCE_NO
    long NO_OF_CHILDREN
    long MALE_CHILDREN
    long FEMALE_CHILDREN
    String BIRTH_PLACE
    String IDENTIFICATION_MARKS
    String PRE_ROAD_NO
    String PRE_HOUSE_NO
    String PRE_BLOCK_NO
    String PRE_POST_CODE
    Division PRE_CITY
    District PRE_DISTRICT
    Upazila PRE_THANA
    String PER_ROAD_NO
    String PER_HOUSE_NO
    String PER_BLOCK_NO
    String PER_POST_CODE
    Division PER_CITY
    District PER_DISTRICT
    Upazila PER_THANA
    String TNT_NO
    String MOBILE_NO
    String EMAIL_ID
    Designation JOINING_DESIGNATION_ID
    String SALARY_TYPE_ID
    String BANK_ID
    String BRANCH_ID
    String OFFICE_IN_TIME
    String OFFICE_OUT_TIME
    String OT_ALLOW
//    String IMAGE_PATH
//    String IMAGE_NAME
    String ACCOUNTING_INFO_ID
    String EMPLOYEE_CATEGORY_ID
    String pic_url_
//    Long SALARY

    static constraints = {
        EMPLOYEE_ID(nullable: true)
        EMPLOYEE_NAME(nullable: true)
        DESIGNATION_ID(nullable: true)
        DEPARTMENT_ID(nullable: true)
        EMPLOYEE_TYPE_ID(nullable: true)
        RELIGION_NAME_ID(nullable: true)
        BLOOD_GROUP_ID(nullable: true)
        MARITAL_STATUS_ID(nullable: true)
        NATIONALITY_ID(nullable: true)
        GENDER_ID(nullable: true)
        PERSONAL_FILE_NO(nullable: true)
        JOINING_DATE(nullable: true)
        CONFIRMATION_DATE(nullable: true)
        SERVICE_END_DATE(nullable: true)
        LAST_INCREMENT_DATE(nullable: true)
        NEXT_INCREMENT_DATE(nullable: true)
        TIN(nullable: true)
        PAYMENT_TYPE(nullable: true)
        BANK_AC_NO(nullable: true)
        BANK_NAME(nullable: true)
        FATHER_NAME(nullable: true)
        MOTHER_NAME(nullable: true)
        SPOUSE_NAME(nullable: true)
        DATE_OF_BIRTH(nullable: true)
        NATIONAL_ID(nullable: true)
        PASSPORT_NO(nullable: true)
        DRIVING_LICIENCE_NO(nullable: true)
        NO_OF_CHILDREN(nullable: true)
        MALE_CHILDREN(nullable: true)
        FEMALE_CHILDREN(nullable: true)
        BIRTH_PLACE(nullable: true)
        IDENTIFICATION_MARKS(nullable: true)
        PRE_ROAD_NO(nullable: true)
        PRE_CITY(nullable: true)
        PRE_DISTRICT(nullable: true)
        PRE_THANA(nullable: true)
        PRE_HOUSE_NO(nullable: true)
        PRE_BLOCK_NO(nullable: true)
        PRE_POST_CODE(nullable: true)
        PER_CITY(nullable: true)
        PER_DISTRICT(nullable: true)
        PER_THANA(nullable: true)
        TNT_NO(nullable: true)
        MOBILE_NO(nullable: true)
        EMAIL_ID(nullable: true,email: true)
        JOINING_DESIGNATION_ID(nullable: true)
        SALARY_TYPE_ID(nullable: true)
        BANK_ID(nullable: true)
        BRANCH_ID(nullable: true)
        OFFICE_IN_TIME(nullable: true)
        OFFICE_OUT_TIME(nullable: true)
        OT_ALLOW(nullable: true)
//        IMAGE_PATH(nullable: true)
//        IMAGE_NAME(nullable: true)
        ACCOUNTING_INFO_ID(nullable: true)
        EMPLOYEE_CATEGORY_ID(nullable: true)
        pic_url_(nullable: true)
//        SALARY(nullable: true)
    }
    String toString(){
        return EMPLOYEE_NAME
    }
}
