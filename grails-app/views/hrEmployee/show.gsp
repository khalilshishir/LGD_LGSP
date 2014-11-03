
<%@ page import="accounts.AfmBankBranch; accounts.AfmBankInfo; hrms.HrEmployee" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hrEmployee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>


    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></a>
    </p>
    <div id="show-hrEmployee" class="content scaffold-show" role="main">
    %{--<h1><g:message code="default.show.label" args="[entityName]"/></h1>--}%
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status" style="font-family: arial, helvetica, verdana, sans-serif;font-weight: bold; color: #008000;margin: 1%;">
                ${flash.message}
            </div>
        </g:if>


        <div class="panel-body">
            <ol class="property-list hrEmployee">

                <g:if test="${hrEmployeeInstance?.cardNo}">
                    <li class="fieldcontain">
                        <span id="cardNo1-label" class="property-label">
                            <g:message code="hrEmployee.cardNo.label" default="Employee ID : "/>
                        </span>
                        <span class="property-value" aria-labelledby="cardNo-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="cardNo"/>
                        </span>
                    </li>
                </g:if>
                <g:if test="${hrEmployeeInstance?.employeeName}">
                    <li class="fieldcontain">
                        <span id="employeeName1-label" class="property-label">
                            <g:message code="hrEmployee.employeeName.label" default="Employee Name : "/>
                        </span>
                        <span class="property-value" aria-labelledby="employeeName-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="employeeName"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.imageName}">
                    <li class="fieldcontain">
                        <span id="imageName1-label" class="property-label">
                            <g:message code="hrEmployee.imageName.label" default="Employee Photo : "/>
                        </span>
                        <span class="property-value" aria-labelledby="imageName-label">
                            <g:img dir="employeeImage" file="${hrEmployeeInstance?.imageName}" width="100" height="100"  style="border: solid 1px; " />
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.personalFileNo}">
                    <li class="fieldcontain">
                        <span id="personalFileNo1-label" class="property-label">
                            <g:message code="hrEmployee.personalFileNo.label" default="Employee File No : "/>
                        </span>
                        <span class="property-value" aria-labelledby="personalFileNo-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="personalFileNo"/>
                        </span>
                    </li>
                </g:if>
                <g:if test="${hrEmployeeInstance?.nationalId}">
                    <li class="fieldcontain">
                        <span id="nationalId1-label" class="property-label">
                            <g:message code="hrEmployee.nationalId.label" default="National ID : "/>
                        </span>
                        <span class="property-value" aria-labelledby="nationalId-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="nationalId"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.passportNo}">
                    <li class="fieldcontain">
                        <span id="passportNo1-label" class="property-label">
                            <g:message code="hrEmployee.passportNo.label" default="Passport No : "/>
                        </span>
                        <span class="property-value" aria-labelledby="passportNo-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="passportNo"/>
                        </span>
                    </li>
                </g:if>
                <g:if test="${hrEmployeeInstance?.emailId}">
                    <li class="fieldcontain">
                        <span id="emailId1-label" class="property-label">
                            <g:message code="hrEmployee.emailId.label" default="E-Mail : "/>
                        </span>
                        <span class="property-value" aria-labelledby="emailId-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="emailId"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.drivingLicienceNo}">
                    <li class="fieldcontain">
                        <span id="drivingLicienceNo1-label" class="property-label">
                            <g:message code="hrEmployee.drivingLicienceNo.label" default="Driving Licience No : "/>
                        </span>
                        <span class="property-value" aria-labelledby="drivingLicienceNo-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="drivingLicienceNo"/>
                        </span>
                    </li>
                </g:if>


                <g:if test="${hrEmployeeInstance?.departmentIdHrDepartment}">
                    <li class="fieldcontain">
                        <span id="departmentIdHrDepartment1-label" class="property-label">
                            <g:message code="hrEmployee.departmentIdHrDepartment.label" default="Department : "/>
                        </span>
                        <span class="property-value" aria-labelledby="departmentIdHrDepartment-label">
                            ${hrEmployeeInstance?.departmentIdHrDepartment?.encodeAsHTML()}
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.designationIdHrDesignation}">
                    <li class="fieldcontain">
                        <span id="designationIdHrDesignation1-label" class="property-label">
                            <g:message code="hrEmployee.designationIdHrDesignation.label" default="Designation : "/>
                        </span>
                        <span class="property-value" aria-labelledby="designationIdHrDesignation-label">
                            ${hrEmployeeInstance?.designationIdHrDesignation?.encodeAsHTML()}
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.religionNameIdHrLookup}">
                    <li class="fieldcontain">
                        <span id="religionNameIdHrLookup1-label" class="property-label">
                            <g:message code="hrEmployee.religionNameIdHrLookup.label" default="Religion : "/>
                        </span>
                        <span class="property-value" aria-labelledby="religionNameIdHrLookup-label">
                            ${hrEmployeeInstance?.religionNameIdHrLookup?.encodeAsHTML()}
                        </span>
                    </li>
                </g:if>


                <g:if test="${hrEmployeeInstance?.bloodGroupIdHrLookup}">
                    <li class="fieldcontain">
                        <span id="bloodGroupIdHrLookup1-label" class="property-label">
                            <g:message code="hrEmployee.bloodGroupIdHrLookup.label" default="Blood Group : "/>
                        </span>
                        <span class="property-value" aria-labelledby="bloodGroupIdHrLookup-label">
                            ${hrEmployeeInstance?.bloodGroupIdHrLookup?.encodeAsHTML()}
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.maritalStatusHrLookup}">
                    <li class="fieldcontain">
                        <span id="maritalStatusHrLookup1-label" class="property-label">
                            <g:message code="hrEmployee.maritalStatusHrLookup.label" default="Marital Status : "/>
                        </span>
                        <span class="property-value" aria-labelledby="maritalStatusHrLookup-label">
                            ${hrEmployeeInstance?.maritalStatusHrLookup?.encodeAsHTML()}
                        </span>
                    </li>
                </g:if>

               <g:if test="${hrEmployeeInstance?.nationalityIdHrLookup}">
                    <li class="fieldcontain">
                        <span id="nationalityIdHrLookup1-label" class="property-label">
                            <g:message code="hrEmployee.nationalityIdHrLookup.label" default="Nationality : "/>
                        </span>
                        <span class="property-value" aria-labelledby="nationalityIdHrLookup-label">
                            ${hrEmployeeInstance?.nationalityIdHrLookup?.encodeAsHTML()}
                        </span>
                    </li>
                </g:if>

               <g:if test="${hrEmployeeInstance?.genderIdHrLookup}">
                    <li class="fieldcontain">
                        <span id="genderIdHrLookup1-label" class="property-label">
                            <g:message code="hrEmployee.genderIdHrLookup.label" default="Gender : "/>
                        </span>
                        <span class="property-value" aria-labelledby="genderIdHrLookup-label">
                            ${hrEmployeeInstance?.genderIdHrLookup?.encodeAsHTML()}
                        </span>
                    </li>
                </g:if>

              <g:if test="${hrEmployeeInstance?.employeeTypeIdHrLookup}">
                    <li class="fieldcontain">
                        <span id="employeeTypeIdHrLookup1-label" class="property-label">
                            <g:message code="hrEmployee.employeeTypeIdHrLookup.label" default="Employee Type : "/>
                        </span>
                        <span class="property-value" aria-labelledby="employeeTypeIdHrLookup-label">
                            ${hrEmployeeInstance?.employeeTypeIdHrLookup?.encodeAsHTML()}
                        </span>
                    </li>
               </g:if>

               <g:if test="${hrEmployeeInstance?.presentStatusIdHrLookup}">
                    <li class="fieldcontain">
                        <span id="presentStatusIdHrLookup1-label" class="property-label">
                            <g:message code="hrEmployee.presentStatusIdHrLookup.label" default="Present Status : "/>
                        </span>
                        <span class="property-value" aria-labelledby="presentStatusIdHrLookup-label">
                            ${hrEmployeeInstance?.presentStatusIdHrLookup?.encodeAsHTML()}
                        </span>
                    </li>
                </g:if>

               <g:if test="${hrEmployeeInstance?.bankId}">
                    <li class="fieldcontain">
                        <span id="bankId1-label" class="property-label">
                            <g:message code="hrEmployee.bankId.label" default="Bank Name : "/>
                        </span>
                        <span class="property-value" aria-labelledby="bankId-label">
                            ${AfmBankInfo.findById(hrEmployeeInstance?.bankId)}
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.bankAcNo}">
                    <li class="fieldcontain">
                        <span id="bankAcNo1-label" class="property-label">
                            <g:message code="hrEmployee.bankAcNo.label" default="Bank Account No : "/>
                        </span>
                        <span class="property-value" aria-labelledby="bankAcNo-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="bankAcNo"/>
                        </span>
                    </li>
                </g:if>


                <g:if test="${hrEmployeeInstance?.birthPlace}">
                    <li class="fieldcontain">
                        <span id="birthPlace1-label" class="property-label">
                            <g:message code="hrEmployee.birthPlace.label" default="Birth Place : "/>
                        </span>
                        <span class="property-value" aria-labelledby="birthPlace-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="birthPlace"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.confirmationDate}">
                    <li class="fieldcontain">
                        <span id="confirmationDate1-label" class="property-label">
                            <g:message code="hrEmployee.confirmationDate.label" default="Confirmation Date : "/>
                        </span>
                        <span class="property-value" aria-labelledby="confirmationDate-label">
                            <g:formatDate format="dd/MM/yyyy" date="${hrEmployeeInstance?.confirmationDate}" />
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.bankAcNo}">
                    <li class="fieldcontain">
                        <span id="bankAcNo1-label" class="property-label">
                            <g:message code="hrEmployee.bankAcNo.label" default="Bank Account No : "/>
                        </span>
                        <span class="property-value" aria-labelledby="bankAcNo-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="bankAcNo"/>
                        </span>
                    </li>
                </g:if>


                <g:if test="${hrEmployeeInstance?.dateOfBirth}">
                    <li class="fieldcontain">
                        <span id="dateOfBirth1-label" class="property-label">
                            <g:message code="hrEmployee.dateOfBirth.label" default="Date Of Birth : "/>
                        </span>
                        <span class="property-value" aria-labelledby="dateOfBirth-label">
                            <g:formatDate format="dd/MM/yyyy" date="${hrEmployeeInstance?.dateOfBirth}" />
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.fatherName}">
                    <li class="fieldcontain">
                        <span id="fatherName1-label" class="property-label">
                            <g:message code="hrEmployee.fatherName.label" default="Father Name : "/>
                        </span>
                        <span class="property-value" aria-labelledby="fatherName-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="fatherName"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.faxNo}">
                    <li class="fieldcontain">
                        <span id="faxNo1-label" class="property-label">
                            <g:message code="hrEmployee.faxNo.label" default="Fax No : "/>
                        </span>
                        <span class="property-value" aria-labelledby="faxNo-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="faxNo"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.femaleChildren}">
                    <li class="fieldcontain">
                        <span id="femaleChildren1-label" class="property-label">
                            <g:message code="hrEmployee.femaleChildren.label" default="Female Children : "/>
                        </span>
                        <span class="property-value" aria-labelledby="femaleChildren-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="femaleChildren"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.maleChildren}">
                    <li class="fieldcontain">
                        <span id="maleChildren1-label" class="property-label">
                            <g:message code="hrEmployee.maleChildren.label" default="Male Children : "/>
                        </span>
                        <span class="property-value" aria-labelledby="maleChildren-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="maleChildren"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.identificationMarks}">
                    <li class="fieldcontain">
                        <span id="identificationMarks1-label" class="property-label">
                            <g:message code="hrEmployee.identificationMarks.label" default="Identification Marks : "/>
                        </span>
                        <span class="property-value" aria-labelledby="identificationMarks-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="identificationMarks"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.joiningDate}">
                    <li class="fieldcontain">
                        <span id="joiningDate1-label" class="property-label">
                            <g:message code="hrEmployee.joiningDate.label" default="Joining Date : "/>
                        </span>
                        <span class="property-value" aria-labelledby="joiningDate-label">
                            <g:formatDate format="dd/MM/yyyy" date="${hrEmployeeInstance?.joiningDate}" />
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.lastIncrementDate}">
                    <li class="fieldcontain">
                        <span id="lastIncrementDate1-label" class="property-label">
                            <g:message code="hrEmployee.lastIncrementDate.label" default="Last Increment  Date : "/>
                        </span>
                        <span class="property-value" aria-labelledby="lastIncrementDate-label">
                            <g:formatDate format="dd/MM/yyyy" date="${hrEmployeeInstance?.lastIncrementDate}" />
                        </span>
                    </li>
                </g:if>


                <g:if test="${hrEmployeeInstance?.mobileNo}">
                    <li class="fieldcontain">
                        <span id="mobileNo1-label" class="property-label">
                            <g:message code="hrEmployee.mobileNo.label" default="Mobile No : "/>
                        </span>
                        <span class="property-value" aria-labelledby="mobileNo-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="mobileNo"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.motherName}">
                    <li class="fieldcontain">
                        <span id="motherName1-label" class="property-label">
                            <g:message code="hrEmployee.motherName.label" default="Mother Name : "/>
                        </span>
                        <span class="property-value" aria-labelledby="motherName-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="motherName"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.nextIncrementDate}">
                    <li class="fieldcontain">
                        <span id="nextIncrementDate1-label" class="property-label">
                            <g:message code="hrEmployee.nextIncrementDate.label" default="Next Increment Date : "/>
                        </span>
                        <span class="property-value" aria-labelledby="nextIncrementDate-label">
                            <g:formatDate format="dd/MM/yyyy" date="${hrEmployeeInstance?.nextIncrementDate}" />
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.noOfChildren}">
                    <li class="fieldcontain">
                        <span id="noOfChildren1-label" class="property-label">
                            <g:message code="hrEmployee.noOfChildren.label" default="No of Children : "/>
                        </span>
                        <span class="property-value" aria-labelledby="noOfChildren-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="noOfChildren"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.noticePeriod}">
                    <li class="fieldcontain">
                        <span id="noticePeriod1-label" class="property-label">
                            <g:message code="hrEmployee.noticePeriod.label" default="Notice Period : "/>
                        </span>
                        <span class="property-value" aria-labelledby="noticePeriod-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="noticePeriod"/>
                        </span>
                    </li>
                </g:if>

                <g:if test="${hrEmployeeInstance?.paymentTypeIdHrLookup}">
                    <li class="fieldcontain">
                        <span id="paymentTypeIdHrLookup1-label" class="property-label">
                            <g:message code="hrEmployee.paymentTypeIdHrLookup.label" default="Payment Type : "/>
                        </span>
                        <span class="property-value" aria-labelledby="paymentTypeIdHrLookup-label">
                            ${hrEmployeeInstance?.paymentTypeIdHrLookup}
                        </span>
                    </li>
                </g:if>


            <g:if test="${hrEmployeeInstance?.probationaryPeriod}">
                <li class="fieldcontain">
                    <span id="probationaryPeriod1-label" class="property-label">
                        <g:message code="hrEmployee.probationaryPeriod.label" default="Probationary Period : "/>
                    </span>
                    <span class="property-value" aria-labelledby="probationaryPeriod-label">
                        <g:fieldValue bean="${hrEmployeeInstance}" field="probationaryPeriod"/>
                    </span>
                </li>
            </g:if>

            <g:if test="${hrEmployeeInstance?.regularationDate}">
                <li class="fieldcontain">
                    <span id="regularationDate1-label" class="property-label">
                        <g:message code="hrEmployee.regularationDate.label" default="Regularation Date : "/>
                    </span>
                    <span class="property-value" aria-labelledby="regularationDate-label">
                        <g:formatDate format="dd/MM/yyyy" date="${hrEmployeeInstance?.regularationDate}" />
                    </span>
                </li>
            </g:if>

            <g:if test="${hrEmployeeInstance?.serviceEndDate}">
                <li class="fieldcontain">
                    <span id="serviceEndDate1-label" class="property-label">
                        <g:message code="hrEmployee.serviceEndDate.label" default="Service End Date : "/>
                    </span>
                    <span class="property-value" aria-labelledby="serviceEndDate-label">
                        <g:formatDate format="dd/MM/yyyy" date="${hrEmployeeInstance?.serviceEndDate}" />
                    </span>
                </li>
            </g:if>


            <g:if test="${hrEmployeeInstance?.spouseName}">
                <li class="fieldcontain">
                    <span id="spouseName1-label" class="property-label">
                        <g:message code="hrEmployee.spouseName.label" default="Spouse Name : "/>
                    </span>
                    <span class="property-value" aria-labelledby="spouseName-label">
                        <g:fieldValue bean="${hrEmployeeInstance}" field="spouseName"/>
                    </span>
                </li>
            </g:if>

            <g:if test="${hrEmployeeInstance?.tin}">
                <li class="fieldcontain">
                    <span id="tin1-label" class="property-label">
                        <g:message code="hrEmployee.tin.label" default="TIN : "/>
                    </span>
                    <span class="property-value" aria-labelledby="tin-label">
                        <g:fieldValue bean="${hrEmployeeInstance}" field="tin"/>
                    </span>
                </li>
            </g:if>

            <g:if test="${hrEmployeeInstance?.tinCircle}">
                <li class="fieldcontain">
                    <span id="tinCircle1-label" class="property-label">
                        <g:message code="hrEmployee.tinCircle.label" default="TIN Circle : "/>
                    </span>
                    <span class="property-value" aria-labelledby="tinCircle-label">
                        <g:fieldValue bean="${hrEmployeeInstance}" field="tinCircle"/>
                    </span>
                </li>
            </g:if>

            <g:if test="${hrEmployeeInstance?.tntNo}">
                <li class="fieldcontain">
                    <span id="tntNo1-label" class="property-label">
                        <g:message code="hrEmployee.tntNo.label" default="Phone No : "/>
                    </span>
                    <span class="property-value" aria-labelledby="tntNo-label">
                        <g:fieldValue bean="${hrEmployeeInstance}" field="tntNo"/>
                    </span>
                </li>
            </g:if>




                <g:if test="${hrEmployeeInstance?.perBlockNo}">
                    <li class="fieldcontain">
                        <span id="perBlockNo1-label" class="property-label">
                            <g:message code="hrEmployee.perBlockNo.label" default="Block No : "/>
                        </span>
                        <span class="property-value" aria-labelledby="perBlockNo-label">
                            <g:fieldValue bean="${hrEmployeeInstance}" field="perBlockNo"/>
                        </span>
                    </li>
                </g:if>

               %{--<li class="fieldcontain">
                    <span id="isActive1-label" class="property-label">
                        <g:message code="hrEmployee.departmentName.label" default="Active Status : "/>
                    </span>
                    <span class="property-value" aria-labelledby="isActive-label">
                        <g:if test="${hrDepartmentInstance?.isActive==true}">
                            Yes
                        </g:if>
                        <g:elseif test="${hrDepartmentInstance?.isActive==false}">
                            No
                        </g:elseif>
                        <g:else>

                        </g:else>
                    </span>
                </li>--}%

                <li class="fieldcontain" style="margin-bottom: 1%">
                </li>
            </ol>

            <g:form>
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${hrEmployeeInstance?.id}"/>
                    <g:link class="edit btn btn-primary btn-sm" action="edit" id="${hrEmployeeInstance?.id}"><g:message code="default.button.edit.label"
                                                                                                                          default="Edit"/></g:link>
                    <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </div>



         %{--<ol>
			
				<g:if test="${hrEmployeeInstance?.perCity}">
				<li class="fieldcontain">
					<span id="perCity-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.perCity.label" default="Permanent City:" /></span>
					
						<span class="property-value" aria-labelledby="perCity-label"><g:fieldValue bean="${hrEmployeeInstance}" field="perCity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.perDistrict}">
				<li class="fieldcontain">
					<span id="perDistrict-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.perDistrict.label" default="Permanent District:" /></span>
					
						<span class="property-value" aria-labelledby="perDistrict-label"><g:fieldValue bean="${hrEmployeeInstance}" field="perDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.perHouseNo}">
				<li class="fieldcontain">
					<span id="perHouseNo-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.perHouseNo.label" default="Permanent House No:" /></span>
					
						<span class="property-value" aria-labelledby="perHouseNo-label"><g:fieldValue bean="${hrEmployeeInstance}" field="perHouseNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.perPostCode}">
				<li class="fieldcontain">
					<span id="perPostCode-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.perPostCode.label" default="Permanent Post Code:" /></span>
					
						<span class="property-value" aria-labelledby="perPostCode-label"><g:fieldValue bean="${hrEmployeeInstance}" field="perPostCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.perRoadNo}">
				<li class="fieldcontain">
					<span id="perRoadNo-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.perRoadNo.label" default="Permanent Road No:" /></span>
					
						<span class="property-value" aria-labelledby="perRoadNo-label"><g:fieldValue bean="${hrEmployeeInstance}" field="perRoadNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.perThana}">
				<li class="fieldcontain">
					<span id="perThana-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.perThana.label" default="Permanent Thana:" /></span>
					
						<span class="property-value" aria-labelledby="perThana-label"><g:fieldValue bean="${hrEmployeeInstance}" field="perThana"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.preBlockNo}">
				<li class="fieldcontain">
					<span id="preBlockNo-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.preBlockNo.label" default="Present Block No:" /></span>
					
						<span class="property-value" aria-labelledby="preBlockNo-label"><g:fieldValue bean="${hrEmployeeInstance}" field="preBlockNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.preCity}">
				<li class="fieldcontain">
					<span id="preCity-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.preCity.label" default="Present City:" /></span>
					
						<span class="property-value" aria-labelledby="preCity-label"><g:fieldValue bean="${hrEmployeeInstance}" field="preCity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.preDistrict}">
				<li class="fieldcontain">
					<span id="preDistrict-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.preDistrict.label" default="Present District:" /></span>
					
						<span class="property-value" aria-labelledby="preDistrict-label"><g:fieldValue bean="${hrEmployeeInstance}" field="preDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.preHouseNo}">
				<li class="fieldcontain">
					<span id="preHouseNo-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.preHouseNo.label" default="Present House No:" /></span>
					
						<span class="property-value" aria-labelledby="preHouseNo-label"><g:fieldValue bean="${hrEmployeeInstance}" field="preHouseNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.prePostCode}">
				<li class="fieldcontain">
					<span id="prePostCode-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.prePostCode.label" default="Present Post Code:" /></span>
					
						<span class="property-value" aria-labelledby="prePostCode-label"><g:fieldValue bean="${hrEmployeeInstance}" field="prePostCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.preRoadNo}">
				<li class="fieldcontain">
					<span id="preRoadNo-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.preRoadNo.label" default="Present Road No:" /></span>
					
						<span class="property-value" aria-labelledby="preRoadNo-label"><g:fieldValue bean="${hrEmployeeInstance}" field="preRoadNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hrEmployeeInstance?.preThana}">
				<li class="fieldcontain">
					<span id="preThana-label" class="property-label" style="font-weight: bold;"><g:message code="hrEmployee.preThana.label" default="Present Thana:" /></span>
					
						<span class="property-value" aria-labelledby="preThana-label"><g:fieldValue bean="${hrEmployeeInstance}" field="preThana"/></span>
					
				</li>
				</g:if>
			

			
			</ol>--}%

	</body>
</html>
