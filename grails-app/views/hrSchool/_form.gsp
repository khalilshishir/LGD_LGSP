<%@ page import="hrms.HrSchool" %>

<div id="wrapper">
    <table class="promint_block">
        <tr class="tdSpaceCompress">
            <td>School Name:</td>
            <td>
                <g:textField name="schoolName" maxlength="100" required="" value="${hrSchoolInstance?.schoolName}"  class="mid_sized_txt"/>

            </td>
        </tr>

        <tr>
            <td>Short Name:</td>
            <td>
                <g:textField id="shortName" name="shortName" maxlength="25" value="${hrSchoolInstance?.shortName}"
                             class="small_sized_txt"/>
            </td>
        </tr>
    </table>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: hrSchoolInstance, field: 'schoolName', 'error')} required">
	<label for="schoolName">
		<g:message code="hrSchool.schoolName.label" default="School Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="schoolName" maxlength="100" required="" value="${hrSchoolInstance?.schoolName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hrSchoolInstance, field: 'shortName', 'error')} ">
	<label for="shortName">
		<g:message code="hrSchool.shortName.label" default="Short Name" />
		
	</label>
	<g:textField name="shortName" maxlength="25" value="${hrSchoolInstance?.shortName}"/>
</div>--}%

