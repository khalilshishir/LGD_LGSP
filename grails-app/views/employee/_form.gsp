
<%@ page import="settings.Upazila; settings.District; settings.Division; payroll.Employee" %>





<div class="col-xs-6">
    <div class="form-group">
        <label for="EMPLOYEE_NAME"><g:message code="employee.EMPLOYEE_NAME.label" default="Employee Name"/></label>
        <g:textField class="form-control" name="EMPLOYEE_NAME" value="${employeeInstance?.EMPLOYEE_NAME}"/>
    </div>

    <div class="form-group">
        <label for="EMPLOYEE_ID"><g:message code="employee.EMPLOYEE_ID.label" default="Employee ID"/></label>
        <g:textField class="form-control" name="EMPLOYEE_ID" value="${employeeInstance?.EMPLOYEE_ID}"/>
    </div>

    <div class="form-group">
        <label for="DESIGNATION_ID"><g:message code="employee.DESIGNATION_ID.label" default="Designation"/></label>
        %{-- <g:textField class="form-control" name="DESIGNATION_ID" value="${employeeInstance?.DESIGNATION_ID}"/>--}%
        <g:select id="DESIGNATION_ID" name="DESIGNATION_ID.id" from="${payroll.Designation.list()}" optionKey="id"
                  value="${employeeInstance?.DESIGNATION_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
    </div>

    <div class="form-group">
        <label for="DEPARTMENT_ID"><g:message code="employee.DEPARTMENT_ID.label" default="Department"/></label>
        %{--<g:textField class="form-control" name="DEPARTMENT_ID" value="${employeeInstance?.DEPARTMENT_ID}"/>--}%
        <g:select id="DEPARTMENT_ID" name="DEPARTMENT_ID.id" from="${payroll.Department.list()}" optionKey="id"
                  value="${employeeInstance?.DEPARTMENT_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
    </div>
    <div class="form-group">
        <label for="EMPLOYEE_TYPE_ID"><g:message code="employee.EMPLOYEE_TYPE_ID.label"
                                                 default="Employee Type"/></label>
        %{-- <g:textField class="form-control" name="EMPLOYEE_TYPE_ID" value="${employeeInstance?.EMPLOYEE_TYPE_ID}"/>--}%
        <g:select id="EMPLOYEE_TYPE_ID" name="EMPLOYEE_TYPE_ID.id"
                  from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('EMPLOYEE_TYPE'))}"
                  optionKey="id" value="${employeeInstance?.EMPLOYEE_TYPE_ID?.id}" class="form-control"
                  noSelection="['': '-Select-']"/>
    </div>
    <div class="form-group">
        <label for="RELIGION_NAME_ID"><g:message code="employee.RELIGION_NAME_ID.label"
                                                 default="Religion Name"/></label>
        %{-- <g:textField class="form-control" name="EMPLOYEE_TYPE_ID" value="${employeeInstance?.EMPLOYEE_TYPE_ID}"/>--}%
        <g:select id="RELIGION_NAME_ID" name="RELIGION_NAME_ID.id"
                  from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('RELIGION_NAME'))}"
                  optionKey="id" value="${employeeInstance?.RELIGION_NAME_ID?.id}" class="form-control"
                  noSelection="['': '-Select-']"/>
    </div>
</div>

<div class="col-xs-4 pull-right">
    <strong>Profile Picture</strong>
    <br/>

    <g:if test="${employeeInstance?.pic_url_}">
        <g:img uri="/images/repository/Employee/PIC_/${employeeInstance.pic_url_}" height="240px" width="200px"/>
    </g:if>

    <g:else>
        <g:img uri="/images/no-image.jpg" id="uploadPhotoFile" height="240px" width="200px"/>
    </g:else>

    <input type="file" id="pic_" name="pic_" class="real-upload" onchange="showPhoto(this)"/>
</div>







<div class="row">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="BLOOD_GROUP_ID"><g:message code="employee.BLOOD_GROUP_ID.label"
                                                   default="Blood Group"/></label>
            %{-- <g:textField class="form-control" name="BLOOD_GROUP_ID" value="${employeeInstance?.BLOOD_GROUP_ID}"/>--}%
            <g:select id="BLOOD_GROUP_ID" name="BLOOD_GROUP_ID.id"
                      from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('BLOOD_GROUP'))}"
                      optionKey="id" value="${employeeInstance?.BLOOD_GROUP_ID?.id}" class="form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="MARITAL_STATUS_ID"><g:message code="employee.MARITAL_STATUS_ID.label"
                                                      default="Marital Status"/></label>
            %{-- <g:textField class="form-control" name="MARITAL_STATUS_ID" value="${employeeInstance?.MARITAL_STATUS_ID}"/>--}%
            <g:select id="MARITAL_STATUS_ID" name="MARITAL_STATUS_ID.id"
                      from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('MARITAL_STATUS'))}"
                      optionKey="id" value="${employeeInstance?.MARITAL_STATUS_ID?.id}" class="form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>


<div class="col-xs-6">
    <div class="form-group">
        <label for="NATIONALITY_ID"><g:message code="employee.NATIONALITY_ID.label"
                                               default="Nationality"/></label>
        %{-- <g:textField class="form-control" name="NATIONALITY_ID" value="${employeeInstance?.NATIONALITY_ID}"/>--}%
        <g:select id="NATIONALITY_ID" name="NATIONALITY_ID.id"
                  from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('NATIONALITY'))}"
                  optionKey="id" value="${employeeInstance?.NATIONALITY_ID?.id}" class="form-control"
                  noSelection="['': '-Select-']"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="GENDER_ID"><g:message code="employee.GENDER_ID.label" default="Gender"/></label>
        %{-- <g:textField class="form-control" name="GENDER_ID" value="${employeeInstance?.GENDER_ID}"/>--}%
        <g:select id="GENDER_ID" name="GENDER_ID.id"
                  from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('GENDER'))}"
                  optionKey="id" value="${employeeInstance?.GENDER_ID?.id}" class="form-control"
                  noSelection="['': '-Select-']"/>
    </div>
</div>


<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="PERSONAL_FILE_NO"><g:message code="employee.PERSONAL_FILE_NO.label"
                                                     default="Personal File No"/></label>
            <g:textField format='Y/m/d' class="form-control" name="PERSONAL_FILE_NO" value="${employeeInstance?.PERSONAL_FILE_NO}"/>
        </div>
    </div>

    %{--<div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'JOINING_DATE', 'error')} ">
        <label for="JOINING_DATE">
            <g:message code="employee.JOINING_DATE.label" default="Joining Date"/>

        </label>
        <div name="JOINING_DATE" class="bfh-datepicker" data-min="01/15/2013" data-close="true">
            <input class="form-control" type="text" readonly="" placeholder="" name="JOINING_DATE">
        </div>
        <g:datePicker name="JOINING_DATE" precision="day"
                      value="${employeeInstance?.JOINING_DATE}" default="none"
                      noSelection="['': '']"/>
    </div>--}%
    <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'JOINING_DATE', 'error')} ">

        <div class="form-group">
            <label for="adjustmentAmount">Joining Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.JOINING_DATE)}" data-close="true" data-name="JOINING_DATE"></div>
        </div>
    </div>
</div>

%{--<div class="row">--}%
    %{--<div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'CONFIRMATION_DATE', 'error')} "
         style="padding-left: 15px">
        <label for="CONFIRMATION_DATE">
            <g:message code="employee.CONFIRMATION_DATE.label" default="Conformation Date"/>

        </label>
        <g:datePicker  name="CONFIRMATION_DATE" precision="day"
                       value="${employeeInstance?.CONFIRMATION_DATE}" default="none" noSelection="['': '']"/>
    </div>--}%

    <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'Conformation Date', 'error')} ">

        <div class="form-group">
            <label for="adjustmentAmount">Conformation Date</label>
           <div class="bfh-datepicker"   data-date="${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.CONFIRMATION_DATE)}" data-close="true" data-name="CONFIRMATION_DATE"></div>
        </div>
    </div>

    %{--<div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'SERVICE_END_DATE', 'error')} ">
        <label for="SERVICE_END_DATE">
            <g:message code="employee.SERVICE_END_DATE.label" default="Service End Date"/>

        </label>
        <g:datePicker  name="SERVICE_END_DATE" precision="day"
                       value="${employeeInstance?.SERVICE_END_DATE}" default="none" noSelection="['': '']"/>
    </div>--}%
    <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'SERVICE_END_DATE', 'error')} ">

        <div class="form-group">
            <label for="adjustmentAmount">Service End Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.SERVICE_END_DATE)}" data-close="true" data-name="SERVICE_END_DATE"></div>
        </div>
    </div>
%{--</div>--}%

%{--<div class="row">--}%
    %{--<div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'LAST_INCREMENT_DATE', 'error')} "
         style="padding-left: 15px">
        <label for="LAST_INCREMENT_DATE">
            <g:message code="employee.LAST_INCREMENT_DATE.label" default="Last Increment Date"/>

        </label>
        <g:datePicker  name="LAST_INCREMENT_DATE" precision="day"
                       value="${employeeInstance?.LAST_INCREMENT_DATE}" default="none" noSelection="['': '']"/>
    </div>--}%
    <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'LAST_INCREMENT_DATE', 'error')} ">

        <div class="form-group">
            <label for="adjustmentAmount">Last Increment Date</label>
            <div class="bfh-datepicker" data-date="${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.LAST_INCREMENT_DATE)}" data-close="true" data-name="LAST_INCREMENT_DATE"></div>
        </div>
    </div>

    %{--<div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'NEXT_INCREMENT_DATE', 'error')} ">
        <label for="NEXT_INCREMENT_DATE">
            <g:message code="employee.NEXT_INCREMENT_DATE.label" default="Next Increment Date"/>

        </label>
        <g:datePicker  name="NEXT_INCREMENT_DATE" precision="day"
                       value="${employeeInstance?.NEXT_INCREMENT_DATE}" default="none" noSelection="['': '']"/>
    </div>--}%
    <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'NEXT_INCREMENT_DATE', 'error')} ">

        <div class="form-group">
            <label for="adjustmentAmount">Next Increment Date</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.NEXT_INCREMENT_DATE)}" data-close="true" data-name="NEXT_INCREMENT_DATE"></div>
        </div>
    </div>
%{--</div>--}%

%{--<div class="row">--}%
<div class="col-xs-6">
    <div class="form-group">
        <label for="TIN"><g:message code="employee.TIN.label" default="TIN"/></label>
        <g:textField class="form-control" name="TIN" value="${employeeInstance?.TIN}"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="PAYMENT_TYPE"><g:message code="employee.PAYMENT_TYPE.label" default="Payment Type"/></label>
        %{--<g:textField class="form-control" name="PAYMENT_TYPE" value="${employeeInstance?.PAYMENT_TYPE}"/>--}%
        <g:select id="PAYMENT_TYPE" name="PAYMENT_TYPE.id"
                  from="${lookUp.AllLookup.findAllByParentIdAllLookup(lookUp.Lookup.findByType_name('PAYMENT_TYPE'))}"
                  optionKey="id" value="${employeeInstance?.PAYMENT_TYPE?.id}" class="form-control"
                  noSelection="['': '-Select-']"/>
    </div>
</div>
%{--</div>--}%

%{--<div class="row">--}%
<div class="col-xs-6">
    <div class="form-group">
        <label for="BANK_AC_NO"><g:message code="employee.BANK_AC_NO.label" default="Bank A/C No"/></label>
        <g:textField class="form-control" name="BANK_AC_NO" value="${employeeInstance?.BANK_AC_NO}"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="BANK_NAME"><g:message code="employee.BANK_NAME.label" default="Bank Name"/></label>
        <g:textField class="form-control" name="BANK_NAME" value="${employeeInstance?.BANK_NAME}"/>
    </div>
</div>
%{--</div>--}%

%{--<div class="row">--}%
<div class="col-xs-6">
    <div class="form-group">
        <label for="FATHER_NAME"><g:message code="employee.FATHER_NAME.label" default="Father Name"/></label>
        <g:textField class="form-control" name="FATHER_NAME" value="${employeeInstance?.FATHER_NAME}"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="MOTHER_NAME"><g:message code="employee.MOTHER_NAME.label" default="Mother Name"/></label>
        <g:textField class="form-control" name="MOTHER_NAME" value="${employeeInstance?.MOTHER_NAME}"/>
    </div>
</div>
%{--</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="SPOUSE_NAME"><g:message code="employee.SPOUSE_NAME.label" default="Spouse Name"/></label>
            <g:textField class="form-control" name="SPOUSE_NAME" value="${employeeInstance?.SPOUSE_NAME}"/>
        </div>
    </div>

    %{--<div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'DATE_OF_BIRTH', 'error')} ">
        <label for="DATE_OF_BIRTH">
            <g:message code="employee.DATE_OF_BIRTH.label" default="Date of Birth"/>

        </label>
        <g:datePicker  name="DATE_OF_BIRTH" precision="day"
                       value="${employeeInstance?.DATE_OF_BIRTH}" default="none" noSelection="['': '']"/>
    </div>--}%

    <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'Date of Birth', 'error')} ">

        <div class="form-group">
            <label for="adjustmentAmount">Date of Birth</label>
            <div class="bfh-datepicker"  data-date="${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.DATE_OF_BIRTH)}" data-close="true" data-name="DATE_OF_BIRTH"></div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="NATIONAL_ID"><g:message code="employee.NATIONAL_ID.label" default="National ID"/></label>
            <g:textField class="form-control" name="NATIONAL_ID" value="${employeeInstance?.NATIONAL_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PASSPORT_NO"><g:message code="employee.PASSPORT_NO.label" default="Passport No"/></label>
            <g:textField class="form-control" name="PASSPORT_NO" value="${employeeInstance?.PASSPORT_NO}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="DRIVING_LICIENCE_NO"><g:message code="employee.DRIVING_LICIENCE_NO.label"
                                                        default="Driving Licience No"/></label>
            <g:textField class="form-control" name="DRIVING_LICIENCE_NO"
                         value="${employeeInstance?.DRIVING_LICIENCE_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="NO_OF_CHILDREN"><g:message code="employee.NO_OF_CHILDREN.label"
                                                   default="No of Children"/></label>
            %{-- <g:textField class="form-control" name="NO_OF_CHILDREN" value="${employeeInstance?.NO_OF_CHILDREN}"/>--}%
            <g:field name="NO_OF_CHILDREN" type="number" class="form-control" value="${employeeInstance.NO_OF_CHILDREN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="MALE_CHILDREN"><g:message code="employee.MALE_CHILDREN.label" default="Male Children"/></label>
            %{--<g:textField class="form-control" name="MALE_CHILDREN" value="${employeeInstance?.MALE_CHILDREN}"/>--}%
            <g:field name="MALE_CHILDREN" type="number" class="form-control" value="${employeeInstance.MALE_CHILDREN}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="FEMALE_CHILDREN"><g:message code="employee.FEMALE_CHILDREN.label"
                                                    default="Female Children"/></label>
            %{--<g:textField class="form-control" name="FEMALE_CHILDREN" value="${employeeInstance?.FEMALE_CHILDREN}"/>--}%
            <g:field name="FEMALE_CHILDREN" type="number" class="form-control" value="${employeeInstance.FEMALE_CHILDREN}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="BIRTH_PLACE"><g:message code="employee.BIRTH_PLACE.label" default="Birth Place"/></label>
            <g:textField class="form-control" name="BIRTH_PLACE" value="${employeeInstance?.BIRTH_PLACE}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="IDENTIFICATION_MARKS"><g:message code="employee.IDENTIFICATION_MARKS.label"
                                                         default="Identification Marks"/></label>
            <g:textField class="form-control" name="IDENTIFICATION_MARKS"
                         value="${employeeInstance?.IDENTIFICATION_MARKS}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="PRE_ROAD_NO"><g:message code="employee.PRE_ROAD_NO.label" default="Present Road No"/></label>
            <g:textField class="form-control" name="PRE_ROAD_NO" value="${employeeInstance?.PRE_ROAD_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PRE_HOUSE_NO"><g:message code="employee.PRE_HOUSE_NO.label" default="Present House No"/></label>
            <g:textField class="form-control" name="PRE_HOUSE_NO" value="${employeeInstance?.PRE_HOUSE_NO}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="PRE_BLOCK_NO"><g:message code="employee.PRE_BLOCK_NO.label" default="Present Block No"/></label>
            <g:textField class="form-control" name="PRE_BLOCK_NO" value="${employeeInstance?.PRE_BLOCK_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PRE_POST_CODE"><g:message code="employee.PRE_POST_CODE.label"
                                                  default="Present Post No"/></label>
            <g:textField class="form-control" name="PRE_POST_CODE" value="${employeeInstance?.PRE_POST_CODE}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="PRE_CITY"><g:message code="employee.PRE_CITY.label" default="Present City"/></label>
            %{--<g:textField class="form-control" name="PRE_CITY" value="${employeeInstance?.PRE_CITY}"/>--}%
            <g:select id="PRE_CITY" name="PRE_CITY.id"
                      from="${settings.Division.list()}"
                      optionKey="id" value="${employeeInstance?.PRE_CITY?.id}" class="form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PRE_DISTRICT"><g:message code="employee.PRE_DISTRICT.label" default="Present District"/></label>
            %{--<g:textField class="form-control" name="PRE_DISTRICT" value="${employeeInstance?.PRE_DISTRICT}"/>--}%
            <g:select id="PRE_DISTRICT" name="PRE_DISTRICT.id"
                      from="${District.list()}"
                      optionKey="id" value="${employeeInstance?.PRE_DISTRICT?.id}" class="form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row" style="padding-left: 15px">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="PRE_THANA"><g:message code="employee.PRE_THANA.label" default="Present Thana"/></label>
            %{--<g:textField class="form-control" name="PRE_THANA" value="${employeeInstance?.PRE_THANA}"/>--}%
            <g:select id="PRE_THANA" name="PRE_THANA.id"
                      from="${Upazila.list()}"
                      optionKey="id" value="${employeeInstance?.PRE_THANA?.id}" class="form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PER_ROAD_NO"><g:message code="employee.PER_ROAD_NO.label" default="Permanent Road No"/></label>
            <g:textField class="form-control" name="PER_ROAD_NO" value="${employeeInstance?.PER_ROAD_NO}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="PER_HOUSE_NO"><g:message code="employee.PER_HOUSE_NO.label"
                                                 default="Permanent House No"/></label>
            <g:textField class="form-control" name="PER_HOUSE_NO" value="${employeeInstance?.PER_HOUSE_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PER_BLOCK_NO"><g:message code="employee.PER_BLOCK_NO.label"
                                                 default="Permanent Block No"/></label>
            <g:textField class="form-control" name="PER_BLOCK_NO" value="${employeeInstance?.PER_BLOCK_NO}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="PER_POST_CODE"><g:message code="employee.PER_POST_CODE.label"
                                                  default="Permanent Post Code"/></label>
            <g:textField class="form-control" name="PER_POST_CODE" value="${employeeInstance?.PER_POST_CODE}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PER_CITY"><g:message code="employee.PER_CITY.label" default="Permanent City"/></label>
            %{--<g:textField class="form-control" name="PER_CITY" value="${employeeInstance?.PER_CITY}"/>--}%
            <g:select id="PER_CITY" name="PER_CITY.id"
                      from="${Division.list()}"
                      optionKey="id" value="${employeeInstance?.PER_CITY?.id}" class="form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="PER_DISTRICT"><g:message code="employee.PER_DISTRICT.label"
                                                 default="Permanent District"/></label>
            %{--<g:textField class="form-control" name="PER_DISTRICT" value="${employeeInstance?.PER_DISTRICT}"/>--}%
            <g:select id="PER_DISTRICT" name="PER_DISTRICT.id"
                      from="${District.list()}"
                      optionKey="id" value="${employeeInstance?.PER_DISTRICT?.id}" class="form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="PER_THANA"><g:message code="employee.PER_THANA.label" default="Permanent Thana"/></label>
            %{--<g:textField class="form-control" name="PER_THANA" value="${employeeInstance?.PER_THANA}"/>--}%
            <g:select id="PER_THANA" name="PER_THANA.id"
                      from="${Upazila.list()}"
                      optionKey="id" value="${employeeInstance?.PER_THANA?.id}" class="form-control"
                      noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="TNT_NO"><g:message code="employee.TNT_NO.label" default="TNT No"/></label>
            <g:textField class="form-control" name="TNT_NO" value="${employeeInstance?.TNT_NO}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="MOBILE_NO"><g:message code="employee.MOBILE_NO.label" default="Mobile No"/></label>
            <g:textField class="form-control" name="MOBILE_NO" value="${employeeInstance?.MOBILE_NO}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="EMAIL_ID"><g:message code="employee.EMAIL_ID.label" default="Email"/></label>
            <g:textField class="form-control" name="EMAIL_ID" value="${employeeInstance?.EMAIL_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="JOINING_DESIGNATION_ID"><g:message code="employee.JOINING_DESIGNATION_ID.label"
                                                           default="Joining Designation"/></label>
            %{--<g:textField class="form-control" name="JOINING_DESIGNATION_ID"
                         value="${employeeInstance?.JOINING_DESIGNATION_ID}"/>--}%
            <g:select id="JOINING_DESIGNATION_ID" name="JOINING_DESIGNATION_ID.id" from="${payroll.Designation.list()}" optionKey="id"
                      value="${employeeInstance?.JOINING_DESIGNATION_ID?.id}" class="form-control" noSelection="['': '-Select-']"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="SALARY_TYPE_ID"><g:message code="employee.SALARY_TYPE_ID.label"
                                                   default="Salary Type ID"/></label>
            <g:textField class="form-control" name="SALARY_TYPE_ID" value="${employeeInstance?.SALARY_TYPE_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="BANK_ID"><g:message code="employee.BANK_ID.label" default="Bank ID"/></label>
            <g:textField class="form-control" name="BANK_ID" value="${employeeInstance?.BANK_ID}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="BRANCH_ID"><g:message code="employee.BRANCH_ID.label" default="Branch ID"/></label>
            <g:textField class="form-control" name="BRANCH_ID" value="${employeeInstance?.BRANCH_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="OFFICE_IN_TIME"><g:message code="employee.OFFICE_IN_TIME.label"
                                                   default="Office in Time"/></label>
            <g:textField class="form-control" name="OFFICE_IN_TIME" value="${employeeInstance?.OFFICE_IN_TIME}"/>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="OFFICE_OUT_TIME"><g:message code="employee.OFFICE_OUT_TIME.label"
                                                    default="Office out Time"/></label>
            <g:textField class="form-control" name="OFFICE_OUT_TIME" value="${employeeInstance?.OFFICE_OUT_TIME}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="OT_ALLOW"><g:message code="employee.OT_ALLOW.label" default="OT Allow"/></label>
            <g:textField class="form-control" name="OT_ALLOW" value="${employeeInstance?.OT_ALLOW}"/>
        </div>
    </div>
</div>

%{--<div class="row">
<div class="col-xs-6" style="padding-left: 15px">
    <div class="form-group">
        <label for="IMAGE_PATH"><g:message code="employee.IMAGE_PATH.label" default="Image Path" /></label>
        <g:textField class="form-control" name="IMAGE_PATH" value="${employeeInstance?.IMAGE_PATH}"/>
    </div>
</div>

<div class="col-xs-6">
    <div class="form-group">
        <label for="IMAGE_NAME"><g:message code="employee.IMAGE_NAME.label" default="Image Name" /></label>
        <g:textField class="form-control" name="IMAGE_NAME" value="${employeeInstance?.IMAGE_NAME}"/>
    </div>
</div>
</div>--}%

<div class="row">
    <div class="col-xs-6" style="padding-left: 15px">
        <div class="form-group">
            <label for="ACCOUNTING_INFO_ID"><g:message code="employee.ACCOUNTING_INFO_ID.label"
                                                       default="Accounting Info ID"/></label>
            <g:textField class="form-control" name="ACCOUNTING_INFO_ID"
                         value="${employeeInstance?.ACCOUNTING_INFO_ID}"/>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="form-group">
            <label for="EMPLOYEE_CATEGORY_ID"><g:message code="employee.EMPLOYEE_CATEGORY_ID.label"
                                                         default="Employee Category ID"/></label>
            <g:textField class="form-control" name="EMPLOYEE_CATEGORY_ID"
                         value="${employeeInstance?.EMPLOYEE_CATEGORY_ID}"/>
        </div>
    </div>
</div>
%{--<div class="col-xs-6">
    <div class="form-group">
        <label for="SALARY"><g:message code="employee.SALARY.label"
                                               default="Salary Amount"/></label>
        <g:field name="SALARY" type="number" class="form-control" value="${employeeInstance.SALARY}"/>
    </div>
</div>--}%
<div class='col-sm-6'>
    %{--<div class="form-group">--}%
        %{--<div class='input-group date' id='datetimepicker5'>--}%
            %{--<input type='text' name="JOINING_DATE" class="form-control" data-date-format="YYYY/MM/DD"/>--}%
            %{--<span class="input-group-addon">--}%
                %{--<span class="glyphicon glyphicon-calendar"></span>--}%
            %{--</span>--}%
        %{--</div>--}%
    %{--</div>--}%
    %{--<div class="form-group">
        <label for="adjustmentAmount">Confirmation Date</label>
        <div class="bfh-datepicker" data-min="01/15/2013" data-close="true" data-name="dateto"></div>
    </div>--}%
</div>

<script type="text/javascript">
//    $(function () {
//        $('#datetimepicker5').datetimepicker({
//            pickTime: true
//        });
//    });
</script>

<script type="text/javascript">

    function showPhoto(imageFile) {
        var fileReader = new FileReader();
        var image = document.getElementById("uploadPhotoFile");
        fileReader.onload = function (e) {
            image.src = e.target.result;
        }
        fileReader.readAsDataURL(imageFile.files[0]);
    }
</script>

