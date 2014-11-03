
<%@ page import="payroll.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>--}%
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
		<div id="show-employee" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%

        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
            </div>


			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
        <div class="panel-body">



			%{--<ol class="property-list employee">

            <div>
                <strong>Profile Picture</strong>
                <br/>
                --}%%{--<img src="images/no-image.jpg"  alt="No Image is Uploaded"/>--}%%{--
                <g:if test="${employeeInstance?.pic_url_}">
                    <g:img uri="/images/repository/Employee/PIC_/${employeeInstance.pic_url_}" height="240px" width="200px"/>
                </g:if>
                <g:else>
                    <g:img uri="/images/no-image.jpg" />
                </g:else>
                --}%%{--<input type="file" id="pic_" name="pic_" class="real-upload"/>--}%%{--
            </div>

				<g:if test="${employeeInstance?.EMPLOYEE_ID}">
				<li class="fieldcontain">
					    <span id="EMPLOYEE_ID-label" class="property-label"><g:message code="employee.EMPLOYEE_ID.label" default="Employee ID" /></span>
                        <span>:</span>
						<span class="property-value" aria-labelledby="EMPLOYEE_ID-label"><g:fieldValue bean="${employeeInstance}" field="EMPLOYEE_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.EMPLOYEE_NAME}">
				<li class="fieldcontain">
					<span id="EMPLOYEE_NAME-label" class="property-label"><g:message code="employee.EMPLOYEE_NAME.label" default="Employee Name" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="EMPLOYEE_NAME-label"><g:fieldValue bean="${employeeInstance}" field="EMPLOYEE_NAME"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.DESIGNATION_ID}">
				<li class="fieldcontain">
					<span id="DESIGNATION_ID-label" class="property-label"><g:message code="employee.DESIGNATION_ID.label" default="Designation ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="DESIGNATION_ID-label"><g:fieldValue bean="${employeeInstance}" field="DESIGNATION_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.DEPARTMENT_ID}">
				<li class="fieldcontain">
					<span id="DEPARTMENT_ID-label" class="property-label"><g:message code="employee.DEPARTMENT_ID.label" default="Department ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="DEPARTMENT_ID-label"><g:fieldValue bean="${employeeInstance}" field="DEPARTMENT_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.EMPLOYEE_TYPE_ID}">
				<li class="fieldcontain">
					<span id="EMPLOYEE_TYPE_ID-label" class="property-label"><g:message code="employee.EMPLOYEE_TYPE_ID.label" default="Employee Type ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="EMPLOYEE_TYPE_ID-label"><g:fieldValue bean="${employeeInstance}" field="EMPLOYEE_TYPE_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.RELIGION_NAME_ID}">
				<li class="fieldcontain">
					<span id="RELIGION_NAME_ID-label" class="property-label"><g:message code="employee.RELIGION_NAME_ID.label" default="Religion Name ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="RELIGION_NAME_ID-label"><g:fieldValue bean="${employeeInstance}" field="RELIGION_NAME_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.BLOOD_GROUP_ID}">
				<li class="fieldcontain">
					<span id="BLOOD_GROUP_ID-label" class="property-label"><g:message code="employee.BLOOD_GROUP_ID.label" default="Blood Group ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="BLOOD_GROUP_ID-label"><g:fieldValue bean="${employeeInstance}" field="BLOOD_GROUP_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.MARITAL_STATUS_ID}">
				<li class="fieldcontain">
					<span id="MARITAL_STATUS_ID-label" class="property-label"><g:message code="employee.MARITAL_STATUS_ID.label" default="Marital Status ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="MARITAL_STATUS_ID-label"><g:fieldValue bean="${employeeInstance}" field="MARITAL_STATUS_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.NATIONALITY_ID}">
				<li class="fieldcontain">
					<span id="NATIONALITY_ID-label" class="property-label"><g:message code="employee.NATIONALITY_ID.label" default="Nationality ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="NATIONALITY_ID-label"><g:fieldValue bean="${employeeInstance}" field="NATIONALITY_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.GENDER_ID}">
				<li class="fieldcontain">
					<span id="GENDER_ID-label" class="property-label"><g:message code="employee.GENDER_ID.label" default="Gender ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="GENDER_ID-label"><g:fieldValue bean="${employeeInstance}" field="GENDER_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.PERSONAL_FILE_NO}">
				<li class="fieldcontain">
					<span id="PERSONAL_FILE_NO-label" class="property-label"><g:message code="employee.PERSONAL_FILE_NO.label" default="Personal File No" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PERSONAL_FILE_NO-label"><g:fieldValue bean="${employeeInstance}" field="PERSONAL_FILE_NO"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.JOINING_DATE}">
				<li class="fieldcontain">
					<span id="JOINING_DATE-label" class="property-label"><g:message code="employee.JOINING_DATE.label" default="Joining Date" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="JOINING_DATE-label"><g:formatDate date="${employeeInstance?.JOINING_DATE}" /></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.CONFIRMATION_DATE}">
				<li class="fieldcontain">
					<span id="CONFIRMATION_DATE-label" class="property-label"><g:message code="employee.CONFIRMATION_DATE.label" default="Confirmation Date" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="CONFIRMATION_DATE-label"><g:formatDate date="${employeeInstance?.CONFIRMATION_DATE}" /></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.SERVICE_END_DATE}">
				<li class="fieldcontain">
					<span id="SERVICE_END_DATE-label" class="property-label"><g:message code="employee.SERVICE_END_DATE.label" default="Service End Date" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="SERVICE_END_DATE-label"><g:formatDate date="${employeeInstance?.SERVICE_END_DATE}" /></span>
				</li>
				</g:if>

            <g:if test="${employeeInstance?.LAST_INCREMENT_DATE}">
                <li class="fieldcontain">
                    <span id="LAST_INCREMENT_DATE-label" class="property-label"><g:message code="employee.LAST_INCREMENT_DATE.label" default="Last Increment Date" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="LAST_INCREMENT_DATE-label"><g:formatDate date="${employeeInstance?.LAST_INCREMENT_DATE}" /></span>
                </li>
            </g:if>

            <g:if test="${employeeInstance?.NEXT_INCREMENT_DATE}">
                <li class="fieldcontain">
                    <span id="NEXT_INCREMENT_DATE-label" class="property-label"><g:message code="employee.NEXT_INCREMENT_DATE.label" default="Next Increment Date" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="NEXT_INCREMENT_DATE-label"><g:formatDate date="${employeeInstance?.NEXT_INCREMENT_DATE}" /></span>
                </li>
            </g:if>
			
				<g:if test="${employeeInstance?.TIN}">
				<li class="fieldcontain">
					<span id="TIN-label" class="property-label"><g:message code="employee.TIN.label" default="TIN" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="TIN-label"><g:fieldValue bean="${employeeInstance}" field="TIN"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.PAYMENT_TYPE}">
				<li class="fieldcontain">
					<span id="PAYMENT_TYPE-label" class="property-label"><g:message code="employee.PAYMENT_TYPE.label" default="Payment Type" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PAYMENT_TYPE-label"><g:fieldValue bean="${employeeInstance}" field="PAYMENT_TYPE"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.BANK_AC_NO}">
				<li class="fieldcontain">
					<span id="BANK_AC_NO-label" class="property-label"><g:message code="employee.BANK_AC_NO.label" default="Bank AC No" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="BANK_AC_NO-label"><g:fieldValue bean="${employeeInstance}" field="BANK_AC_NO"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.BANK_NAME}">
				<li class="fieldcontain">
					<span id="BANK_NAME-label" class="property-label"><g:message code="employee.BANK_NAME.label" default="Bank Name" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="BANK_NAME-label"><g:fieldValue bean="${employeeInstance}" field="BANK_NAME"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.FATHER_NAME}">
				<li class="fieldcontain">
					<span id="FATHER_NAME-label" class="property-label"><g:message code="employee.FATHER_NAME.label" default="Father Name" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="FATHER_NAME-label"><g:fieldValue bean="${employeeInstance}" field="FATHER_NAME"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.MOTHER_NAME}">
				<li class="fieldcontain">
					<span id="MOTHER_NAME-label" class="property-label"><g:message code="employee.MOTHER_NAME.label" default="Mother Name" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="MOTHER_NAME-label"><g:fieldValue bean="${employeeInstance}" field="MOTHER_NAME"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.SPOUSE_NAME}">
				<li class="fieldcontain">
					<span id="SPOUSE_NAME-label" class="property-label"><g:message code="employee.SPOUSE_NAME.label" default="Spouse Name" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="SPOUSE_NAME-label"><g:fieldValue bean="${employeeInstance}" field="SPOUSE_NAME"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.DATE_OF_BIRTH}">
				<li class="fieldcontain">
					<span id="DATE_OF_BIRTH-label" class="property-label"><g:message code="employee.DATE_OF_BIRTH.label" default="Date of Birth" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="DATE_OF_BIRTH-label"><g:formatDate date="${employeeInstance?.DATE_OF_BIRTH}" /></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.NATIONAL_ID}">
				<li class="fieldcontain">
					<span id="NATIONAL_ID-label" class="property-label"><g:message code="employee.NATIONAL_ID.label" default="National ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="NATIONAL_ID-label"><g:fieldValue bean="${employeeInstance}" field="NATIONAL_ID"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.PASSPORT_NO}">
				<li class="fieldcontain">
					<span id="PASSPORT_NO-label" class="property-label"><g:message code="employee.PASSPORT_NO.label" default="Passport No" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PASSPORT_NO-label"><g:fieldValue bean="${employeeInstance}" field="PASSPORT_NO"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.DRIVING_LICIENCE_NO}">
				<li class="fieldcontain">
					<span id="DRIVING_LICIENCE_NO-label" class="property-label"><g:message code="employee.DRIVING_LICIENCE_NO.label" default="Driving Licience No" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="DRIVING_LICIENCE_NO-label"><g:fieldValue bean="${employeeInstance}" field="DRIVING_LICIENCE_NO"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.NO_OF_CHILDREN}">
				<li class="fieldcontain">
					<span id="NO_OF_CHILDREN-label" class="property-label"><g:message code="employee.NO_OF_CHILDREN.label" default="No of Children" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="NO_OF_CHILDREN-label"><g:fieldValue bean="${employeeInstance}" field="NO_OF_CHILDREN"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.MALE_CHILDREN}">
				<li class="fieldcontain">
					<span id="MALE_CHILDREN-label" class="property-label"><g:message code="employee.MALE_CHILDREN.label" default="Male Children" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="MALE_CHILDREN-label"><g:fieldValue bean="${employeeInstance}" field="MALE_CHILDREN"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.FEMALE_CHILDREN}">
				<li class="fieldcontain">
					<span id="FEMALE_CHILDREN-label" class="property-label"><g:message code="employee.FEMALE_CHILDREN.label" default="Female Children" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="FEMALE_CHILDREN-label"><g:fieldValue bean="${employeeInstance}" field="FEMALE_CHILDREN"/></span>
				</li>
				</g:if>

            <g:if test="${employeeInstance?.BIRTH_PLACE}">
                <li class="fieldcontain">
                    <span id="BIRTH_PLACE-label" class="property-label"><g:message code="employee.BIRTH_PLACE.label" default="Birth Place" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="BIRTH_PLACE-label"><g:fieldValue bean="${employeeInstance}" field="BIRTH_PLACE"/></span>
                </li>
            </g:if>
			
				<g:if test="${employeeInstance?.IDENTIFICATION_MARKS}">
				<li class="fieldcontain">
					<span id="IDENTIFICATION_MARKS-label" class="property-label"><g:message code="employee.IDENTIFICATION_MARKS.label" default="Identification Marks" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="IDENTIFICATION_MARKS-label"><g:fieldValue bean="${employeeInstance}" field="IDENTIFICATION_MARKS"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.PRE_ROAD_NO}">
				<li class="fieldcontain">
					<span id="PRE_ROAD_NO-label" class="property-label"><g:message code="employee.PRE_ROAD_NO.label" default="Present Road No" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PRE_ROAD_NO-label"><g:fieldValue bean="${employeeInstance}" field="PRE_ROAD_NO"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.PRE_HOUSE_NO}">
				<li class="fieldcontain">
					<span id="PRE_HOUSE_NO-label" class="property-label"><g:message code="employee.PRE_HOUSE_NO.label" default="Present House No" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PRE_HOUSE_NO-label"><g:fieldValue bean="${employeeInstance}" field="PRE_HOUSE_NO"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.PRE_BLOCK_NO}">
				<li class="fieldcontain">
					<span id="PRE_BLOCK_NO-label" class="property-label"><g:message code="employee.PRE_BLOCK_NO.label" default="Present Block No" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PRE_BLOCK_NO-label"><g:fieldValue bean="${employeeInstance}" field="PRE_BLOCK_NO"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.PRE_POST_CODE}">
				<li class="fieldcontain">
					<span id="PRE_POST_CODE-label" class="property-label"><g:message code="employee.PRE_POST_CODE.label" default="Present Post Code" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PRE_POST_CODE-label"><g:fieldValue bean="${employeeInstance}" field="PRE_POST_CODE"/></span>
				</li>
				</g:if>

            <g:if test="${employeeInstance?.PRE_CITY}">
                <li class="fieldcontain">
                    <span id="PRE_CITY-label" class="property-label"><g:message code="employee.PRE_CITY.label" default="Present City" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="PRE_CITY-label"><g:fieldValue bean="${employeeInstance}" field="PRE_CITY"/></span>
                </li>
            </g:if>

            <g:if test="${employeeInstance?.PRE_DISTRICT}">
                <li class="fieldcontain">
                    <span id="PRE_DISTRICT-label" class="property-label"><g:message code="employee.PRE_DISTRICT.label" default="Present District" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="PRE_DISTRICT-label"><g:fieldValue bean="${employeeInstance}" field="PRE_DISTRICT"/></span>
                </li>
            </g:if>

            <g:if test="${employeeInstance?.PRE_THANA}">
                <li class="fieldcontain">
                    <span id="PRE_THANA-label" class="property-label"><g:message code="employee.PRE_THANA.label" default="Present Thana" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="PRE_THANA-label"><g:fieldValue bean="${employeeInstance}" field="PRE_THANA"/></span>
                </li>
            </g:if>

            <g:if test="${employeeInstance?.PER_ROAD_NO}">
                <li class="fieldcontain">
                    <span id="PER_ROAD_NO-label" class="property-label"><g:message code="employee.PER_ROAD_NO.label" default="Permanent Road No" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="PER_ROAD_NO-label"><g:fieldValue bean="${employeeInstance}" field="PER_ROAD_NO"/></span>

                </li>
            </g:if>

            <g:if test="${employeeInstance?.PER_HOUSE_NO}">
                <li class="fieldcontain">
                    <span id="PER_HOUSE_NO-label" class="property-label"><g:message code="employee.PER_HOUSE_NO.label" default="Permanent House No" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="PER_HOUSE_NO-label"><g:fieldValue bean="${employeeInstance}" field="PER_HOUSE_NO"/></span>

                </li>
            </g:if>

            <g:if test="${employeeInstance?.PER_BLOCK_NO}">
                <li class="fieldcontain">
                    <span id="PER_BLOCK_NO-label" class="property-label"><g:message code="employee.PER_BLOCK_NO.label" default="Permanent Block No" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="PER_BLOCK_NO-label"><g:fieldValue bean="${employeeInstance}" field="PER_BLOCK_NO"/></span>

                </li>
            </g:if>

            <g:if test="${employeeInstance?.PER_POST_CODE}">
                <li class="fieldcontain">
                    <span id="PER_POST_CODE-label" class="property-label"><g:message code="employee.PER_POST_CODE.label" default="Permanent Post Code" /></span>
                    <span>:</span>
                    <span class="property-value" aria-labelledby="PER_POST_CODE-label"><g:fieldValue bean="${employeeInstance}" field="PER_POST_CODE"/></span>

                </li>
            </g:if>
			
				<g:if test="${employeeInstance?.PER_CITY}">
				<li class="fieldcontain">
					<span id="PER_CITY-label" class="property-label"><g:message code="employee.PER_CITY.label" default="Permanent City" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PER_CITY-label"><g:fieldValue bean="${employeeInstance}" field="PER_CITY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.PER_DISTRICT}">
				<li class="fieldcontain">
					<span id="PER_DISTRICT-label" class="property-label"><g:message code="employee.PER_DISTRICT.label" default="Permanent District" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PER_DISTRICT-label"><g:fieldValue bean="${employeeInstance}" field="PER_DISTRICT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.PER_THANA}">
				<li class="fieldcontain">
					<span id="PER_THANA-label" class="property-label"><g:message code="employee.PER_THANA.label" default="Permanent Thana" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="PER_THANA-label"><g:fieldValue bean="${employeeInstance}" field="PER_THANA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.TNT_NO}">
				<li class="fieldcontain">
					<span id="TNT_NO-label" class="property-label"><g:message code="employee.TNT_NO.label" default="TNT No" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="TNT_NO-label"><g:fieldValue bean="${employeeInstance}" field="TNT_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.MOBILE_NO}">
				<li class="fieldcontain">
					<span id="MOBILE_NO-label" class="property-label"><g:message code="employee.MOBILE_NO.label" default="Mobil No" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="MOBILE_NO-label"><g:fieldValue bean="${employeeInstance}" field="MOBILE_NO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.EMAIL_ID}">
				<li class="fieldcontain">
					<span id="EMAIL_ID-label" class="property-label"><g:message code="employee.EMAIL_ID.label" default="Email ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="EMAIL_ID-label"><g:fieldValue bean="${employeeInstance}" field="EMAIL_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.JOINING_DESIGNATION_ID}">
				<li class="fieldcontain">
					<span id="JOINING_DESIGNATION_ID-label" class="property-label"><g:message code="employee.JOINING_DESIGNATION_ID.label" default="Joining Designation ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="JOINING_DESIGNATION_ID-label"><g:fieldValue bean="${employeeInstance}" field="JOINING_DESIGNATION_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.SALARY_TYPE_ID}">
				<li class="fieldcontain">
					<span id="SALARY_TYPE_ID-label" class="property-label"><g:message code="employee.SALARY_TYPE_ID.label" default="Salary Type ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="SALARY_TYPE_ID-label"><g:fieldValue bean="${employeeInstance}" field="SALARY_TYPE_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.BANK_ID}">
				<li class="fieldcontain">
					<span id="BANK_ID-label" class="property-label"><g:message code="employee.BANK_ID.label" default="Bank ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="BANK_ID-label"><g:fieldValue bean="${employeeInstance}" field="BANK_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.BRANCH_ID}">
				<li class="fieldcontain">
					<span id="BRANCH_ID-label" class="property-label"><g:message code="employee.BRANCH_ID.label" default="Branch ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="BRANCH_ID-label"><g:fieldValue bean="${employeeInstance}" field="BRANCH_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.OFFICE_IN_TIME}">
				<li class="fieldcontain">
					<span id="OFFICE_IN_TIME-label" class="property-label"><g:message code="employee.OFFICE_IN_TIME.label" default="Office in Time" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="OFFICE_IN_TIME-label"><g:fieldValue bean="${employeeInstance}" field="OFFICE_IN_TIME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.OFFICE_OUT_TIME}">
				<li class="fieldcontain">
					<span id="OFFICE_OUT_TIME-label" class="property-label"><g:message code="employee.OFFICE_OUT_TIME.label" default="Office out Time" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="OFFICE_OUT_TIME-label"><g:fieldValue bean="${employeeInstance}" field="OFFICE_OUT_TIME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.OT_ALLOW}">
				<li class="fieldcontain">
					<span id="OT_ALLOW-label" class="property-label"><g:message code="employee.OT_ALLOW.label" default="OT Allow" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="OT_ALLOW-label"><g:fieldValue bean="${employeeInstance}" field="OT_ALLOW"/></span>
					
				</li>
				</g:if>
			
				--}%%{--<g:if test="${employeeInstance?.IMAGE_PATH}">
				<li class="fieldcontain">
					<span id="IMAGE_PATH-label" class="property-label"><g:message code="employee.IMAGE_PATH.label" default="Image Path" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="IMAGE_PATH-label"><g:fieldValue bean="${employeeInstance}" field="IMAGE_PATH"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.IMAGE_NAME}">
				<li class="fieldcontain">
					<span id="IMAGE_NAME-label" class="property-label"><g:message code="employee.IMAGE_NAME.label" default="Image Name" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="IMAGE_NAME-label"><g:fieldValue bean="${employeeInstance}" field="IMAGE_NAME"/></span>
					
				</li>
				</g:if>--}%%{--
			
				<g:if test="${employeeInstance?.ACCOUNTING_INFO_ID}">
				<li class="fieldcontain">
					<span id="ACCOUNTING_INFO_ID-label" class="property-label"><g:message code="employee.ACCOUNTING_INFO_ID.label" default="Accounting Info ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="ACCOUNTING_INFO_ID-label"><g:fieldValue bean="${employeeInstance}" field="ACCOUNTING_INFO_ID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.EMPLOYEE_CATEGORY_ID}">
				<li class="fieldcontain">
					<span id="EMPLOYEE_CATEGORY_ID-label" class="property-label"><g:message code="employee.EMPLOYEE_CATEGORY_ID.label" default="Employee Category ID" /></span>
                    <span>:</span>
					<span class="property-value" aria-labelledby="EMPLOYEE_CATEGORY_ID-label"><g:fieldValue bean="${employeeInstance}" field="EMPLOYEE_CATEGORY_ID"/></span>
					
				</li>
				</g:if>
			
			</ol>--}%




        <div class="col-xs-6">
            <div class="form-group">
                <label for="EMPLOYEE_NAME"><g:message code="employee.EMPLOYEE_NAME.label" default="Employee Name"/></label>
               ${employeeInstance?.EMPLOYEE_NAME}
            </div>

            <div class="form-group">
                <label for="EMPLOYEE_ID"><g:message code="employee.EMPLOYEE_ID.label" default="Employee ID"/></label>
                ${employeeInstance?.EMPLOYEE_ID}
            </div>

            <div class="form-group">
                <label for="DESIGNATION_ID"><g:message code="employee.DESIGNATION_ID.label" default="Designation"/></label>
                ${employeeInstance?.DESIGNATION_ID?.DESIGNATION_NAME}
            </div>

            <div class="form-group">
                <label for="DEPARTMENT_ID"><g:message code="employee.DEPARTMENT_ID.label" default="Department"/></label>
                %{--<g:textField class="form-control" name="DEPARTMENT_ID" value="${employeeInstance?.DEPARTMENT_ID}"/>--}%
                ${employeeInstance?.DEPARTMENT_ID?.deptName}
            </div>
            <div class="form-group">
                <label for="EMPLOYEE_TYPE_ID"><g:message code="employee.EMPLOYEE_TYPE_ID.label"
                                                         default="Employee Type"/></label>
                ${employeeInstance?.EMPLOYEE_TYPE_ID?.lookup_name}
            </div>
            <div class="form-group">
                <label for="RELIGION_NAME_ID"><g:message code="employee.RELIGION_NAME_ID.label"
                                                         default="Religion Name"/></label>
                ${employeeInstance?.RELIGION_NAME_ID?.lookup_name}
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

        </div>







        %{--<div class="row">--}%
            <div class="col-xs-6">
                <div class="form-group">
                    <label for="BLOOD_GROUP_ID"><g:message code="employee.BLOOD_GROUP_ID.label"
                                                           default="Blood Group"/></label>
                   ${employeeInstance?.BLOOD_GROUP_ID?.lookup_name}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="MARITAL_STATUS_ID"><g:message code="employee.MARITAL_STATUS_ID.label"
                                                              default="Marital Status"/></label>
                    ${employeeInstance?.MARITAL_STATUS_ID?.lookup_name}
                </div>
            </div>
        %{--</div>--}%


        <div class="col-xs-6">
            <div class="form-group">
                <label for="NATIONALITY_ID"><g:message code="employee.NATIONALITY_ID.label"
                                                       default="Nationality"/></label>
                ${employeeInstance?.NATIONALITY_ID?.lookup_name}
            </div>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <label for="GENDER_ID"><g:message code="employee.GENDER_ID.label" default="Gender"/></label>
                ${employeeInstance?.GENDER_ID?.lookup_name}
            </div>
        </div>


        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="PERSONAL_FILE_NO"><g:message code="employee.PERSONAL_FILE_NO.label"
                                                             default="Personal File No"/></label>
                    ${employeeInstance?.PERSONAL_FILE_NO}
                </div>
            </div>


            <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'JOINING_DATE', 'error')} ">

                <div class="form-group">
                    <label for="adjustmentAmount">Joining Date</label>
                    ${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.JOINING_DATE)}
                </div>
            </div>
        </div>

        <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'Conformation Date', 'error')} ">

            <div class="form-group">
                <label for="adjustmentAmount">Date of Birth</label>
                ${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.CONFIRMATION_DATE)}
                </div>
        </div>

        <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'SERVICE_END_DATE', 'error')} ">

            <div class="form-group">
                <label for="adjustmentAmount">Service End Date</label>
                ${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.SERVICE_END_DATE)}
            </div>
        </div>

        <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'LAST_INCREMENT_DATE', 'error')} ">

            <div class="form-group">
                <label for="adjustmentAmount">Last Increment Date</label>
                ${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.LAST_INCREMENT_DATE)}
            </div>
        </div>

        <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'NEXT_INCREMENT_DATE', 'error')} ">

            <div class="form-group">
                <label for="adjustmentAmount">Next Increment Date</label>
                ${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.NEXT_INCREMENT_DATE)}
            </div>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <label for="TIN"><g:message code="employee.TIN.label" default="TIN"/></label>
                ${employeeInstance?.TIN}
            </div>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <label for="PAYMENT_TYPE"><g:message code="employee.PAYMENT_TYPE.label" default="Payment Type"/></label>
                %{--${employeeInstance?.PAYMENT_TYPE}--}%
                ${employeeInstance?.PAYMENT_TYPE?.lookup_name}

            </div>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <label for="BANK_AC_NO"><g:message code="employee.BANK_AC_NO.label" default="Bank A/C No"/></label>
                ${employeeInstance?.BANK_AC_NO}
            </div>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <label for="BANK_NAME"><g:message code="employee.BANK_NAME.label" default="Bank Name"/></label>
                ${employeeInstance?.BANK_NAME}
            </div>
        </div>
        %{--</div>--}%

        %{--<div class="row">--}%
        <div class="col-xs-6">
            <div class="form-group">
                <label for="FATHER_NAME"><g:message code="employee.FATHER_NAME.label" default="Father Name"/></label>
                ${employeeInstance?.FATHER_NAME}
            </div>
        </div>

        <div class="col-xs-6">
            <div class="form-group">
                <label for="MOTHER_NAME"><g:message code="employee.MOTHER_NAME.label" default="Mother Name"/></label>
                ${employeeInstance?.MOTHER_NAME}
            </div>
        </div>
        %{--</div>--}%

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="SPOUSE_NAME"><g:message code="employee.SPOUSE_NAME.label" default="Spouse Name"/></label>
                    ${employeeInstance?.SPOUSE_NAME}
                </div>
            </div>


            <div class="col-xs-6 ${hasErrors(bean: employeeInstance, field: 'Date of Birth', 'error')} ">

                <div class="form-group">
                    <label for="adjustmentAmount">Date of Birth</label>
                    ${formatDate(format:'MM/dd/yyyy',date:employeeInstance?.DATE_OF_BIRTH)}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="NATIONAL_ID"><g:message code="employee.NATIONAL_ID.label" default="National ID"/></label>
                    ${employeeInstance?.NATIONAL_ID}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="PASSPORT_NO"><g:message code="employee.PASSPORT_NO.label" default="Passport No"/></label>
                    ${employeeInstance?.PASSPORT_NO}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="DRIVING_LICIENCE_NO"><g:message code="employee.DRIVING_LICIENCE_NO.label"
                                                                default="Driving Licience No"/></label>
                    ${employeeInstance?.DRIVING_LICIENCE_NO}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="NO_OF_CHILDREN"><g:message code="employee.NO_OF_CHILDREN.label"
                                                           default="No of Children"/></label>
                    ${employeeInstance.NO_OF_CHILDREN}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="MALE_CHILDREN"><g:message code="employee.MALE_CHILDREN.label" default="Male Children"/></label>
                    ${employeeInstance.MALE_CHILDREN}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="FEMALE_CHILDREN"><g:message code="employee.FEMALE_CHILDREN.label"
                                                            default="Female Children"/></label>
                    ${employeeInstance.FEMALE_CHILDREN}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="BIRTH_PLACE"><g:message code="employee.BIRTH_PLACE.label" default="Birth Place"/></label>
                    ${employeeInstance?.BIRTH_PLACE}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="IDENTIFICATION_MARKS"><g:message code="employee.IDENTIFICATION_MARKS.label"
                                                                 default="Identification Marks"/></label>
                    ${employeeInstance?.IDENTIFICATION_MARKS}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="PRE_ROAD_NO"><g:message code="employee.PRE_ROAD_NO.label" default="Present Road No"/></label>
                    ${employeeInstance?.PRE_ROAD_NO}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="PRE_HOUSE_NO"><g:message code="employee.PRE_HOUSE_NO.label" default="Present House No"/></label>
                    ${employeeInstance?.PRE_HOUSE_NO}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="PRE_BLOCK_NO"><g:message code="employee.PRE_BLOCK_NO.label" default="Present Block No"/></label>
                    ${employeeInstance?.PRE_BLOCK_NO}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="PRE_POST_CODE"><g:message code="employee.PRE_POST_CODE.label"
                                                          default="Present Post No"/></label>
                  ${employeeInstance?.PRE_POST_CODE}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="PRE_CITY"><g:message code="employee.PRE_CITY.label" default="Present City"/></label>
                    ${employeeInstance?.PRE_CITY?.DIV_NAME}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="PRE_DISTRICT"><g:message code="employee.PRE_DISTRICT.label" default="Present District"/></label>
                    ${employeeInstance?.PRE_DISTRICT?.DIS_NAME}
                </div>
            </div>
        </div>

        <div class="row" style="padding-left: 15px">
            <div class="col-xs-6">
                <div class="form-group">
                    <label for="PRE_THANA"><g:message code="employee.PRE_THANA.label" default="Present Thana"/></label>
                    ${employeeInstance?.PRE_THANA?.UPZ_NAME}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="PER_ROAD_NO"><g:message code="employee.PER_ROAD_NO.label" default="Permanent Road No"/></label>
                    ${employeeInstance?.PER_ROAD_NO}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="PER_HOUSE_NO"><g:message code="employee.PER_HOUSE_NO.label"
                                                         default="Permanent House No"/></label>
                    ${employeeInstance?.PER_HOUSE_NO}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="PER_BLOCK_NO"><g:message code="employee.PER_BLOCK_NO.label"
                                                         default="Permanent Block No"/></label>
                   ${employeeInstance?.PER_BLOCK_NO}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="PER_POST_CODE"><g:message code="employee.PER_POST_CODE.label"
                                                          default="Permanent Post Code"/></label>
                   ${employeeInstance?.PER_POST_CODE}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="PER_CITY"><g:message code="employee.PER_CITY.label" default="Permanent City"/></label>
                   ${employeeInstance?.PER_CITY}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="PER_DISTRICT"><g:message code="employee.PER_DISTRICT.label"
                                                         default="Permanent District"/></label>
                    ${employeeInstance?.PER_DISTRICT}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="PER_THANA"><g:message code="employee.PER_THANA.label" default="Permanent Thana"/></label>
                   ${employeeInstance?.PER_THANA}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="TNT_NO"><g:message code="employee.TNT_NO.label" default="TNT No"/></label>
                    ${employeeInstance?.TNT_NO}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="MOBILE_NO"><g:message code="employee.MOBILE_NO.label" default="Mobile No"/></label>
                    ${employeeInstance?.MOBILE_NO}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="EMAIL_ID"><g:message code="employee.EMAIL_ID.label" default="Email ID"/></label>
                    ${employeeInstance?.EMAIL_ID}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="JOINING_DESIGNATION_ID"><g:message code="employee.JOINING_DESIGNATION_ID.label"
                                                                   default="Joining Designation"/></label>
                    ${employeeInstance?.JOINING_DESIGNATION_ID?.DESIGNATION_NAME}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="SALARY_TYPE_ID"><g:message code="employee.SALARY_TYPE_ID.label"
                                                           default="Salary Type ID"/></label>
                    ${employeeInstance?.SALARY_TYPE_ID}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="BANK_ID"><g:message code="employee.BANK_ID.label" default="Bank ID"/></label>
                   ${employeeInstance?.BANK_ID}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="BRANCH_ID"><g:message code="employee.BRANCH_ID.label" default="Branch ID"/></label>
                    ${employeeInstance?.BRANCH_ID}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="OFFICE_IN_TIME"><g:message code="employee.OFFICE_IN_TIME.label"
                                                           default="Office in Time"/></label>
                    ${employeeInstance?.OFFICE_IN_TIME}
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="OFFICE_OUT_TIME"><g:message code="employee.OFFICE_OUT_TIME.label"
                                                            default="Office out Time"/></label>
                    ${employeeInstance?.OFFICE_OUT_TIME}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="OT_ALLOW"><g:message code="employee.OT_ALLOW.label" default="OT Allow"/></label>
                    ${employeeInstance?.OT_ALLOW}
                </div>
            </div>
        </div>



        <div class="row">
            <div class="col-xs-6" style="padding-left: 15px">
                <div class="form-group">
                    <label for="ACCOUNTING_INFO_ID"><g:message code="employee.ACCOUNTING_INFO_ID.label"
                                                               default="Accounting Info ID"/></label>
                    ${employeeInstance?.ACCOUNTING_INFO_ID}
                </div>
            </div>

            <div class="col-xs-6">
                <div class="form-group">
                    <label for="EMPLOYEE_CATEGORY_ID"><g:message code="employee.EMPLOYEE_CATEGORY_ID.label"
                                                                 default="Employee Category ID"/></label>
                    ${employeeInstance?.EMPLOYEE_CATEGORY_ID}
                </div>
            </div>
        </div>
        %{--<div class="col-xs-6">
            <div class="form-group">
                <label for="SALARY"><g:message code="employee.SALARY.label"
                                                       default="Salary Amount"/></label>
                ${employeeInstance?.SALARY}
            </div>
        </div>--}%
        </div>
        <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employeeInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${employeeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
		</div>
        </div>
	</body>
</html>
            l