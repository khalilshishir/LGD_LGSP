<%@ page import="hrms.HrSchool; hrms.HrDepartment" %>


<div class="col-xs-4">
    <div class="form-group">
        <label for="departmentName"><g:message code="hrDepartment.departmentName.label" default="Department Name" /></label>
        <g:textField class="form-control" id="departmentName" name="departmentName" maxlength="50" required=""
                     value="${hrDepartmentInstance?.departmentName}" />
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="shortName"><g:message code="hrDepartment.shortName.label" default="Short Name" /></label>
        <g:textField class="form-control" id="shortName" name="shortName" maxlength="50" required=""
                     value="${hrDepartmentInstance?.shortName}" />
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="school">
            <g:message code="hrDepartment.school.label" default="School Name" />
            <span class="required-school">*</span>
        </label>
        <g:select class="form-control" id="school" name="school.id" from="${HrSchool.list()}" optionKey="id" optionValue="schoolName" noSelection="${['': 'Select One']}" required="" value="${hrDepartmentInstance?.school?.id}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="sortOrder"><g:message code="hrDepartment.sortOrder.label" default="Sort Order" /></label>
        <g:textField class="form-control" id="sortOrder" name="sortOrder" required="" value="${hrDepartmentInstance?.sortOrder}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="isActive"><g:message code="hrDepartment.isActive.label" default="Is Active" /></label>
        <g:if test="${params.action == 'create'}">
            <g:checkBox name="isActive" checked="true"/>
        </g:if>
        <g:else>
            <g:checkBox name="isActive" value="${hrDepartmentInstance?.isActive}"
                        checked="${hrDepartmentInstance?.isActive}"/>
        </g:else>
    </div>
</div>

%{--<div id="wrapper">
    <table class="promint_block">
        <tr class="tdSpaceCompress">
            <td>Department Name:</td>
            <td>
                <g:textField id="departmentName" name="departmentName" maxlength="50" required=""
                             value="${hrDepartmentInstance?.departmentName}" class="mid_sized_txt"/>
            </td>
        </tr>

        <tr>
            <td>Short Name:</td>
            <td>
                <g:textField id="shortName" name="shortName" value="${hrDepartmentInstance?.shortName}" required=""
                             class="small_sized_txt"/>
            </td>
        </tr>

        <tr>
            <td>School:</td>
            <td>

                <g:select id="school" name="school.id" from="${HrSchool.list()}" optionKey="id" optionValue="schoolName"
                          value="${hrDepartmentInstance?.school?.id}" noSelection="${['': 'Select One']}"/>
            </td>
        </tr>

        <tr>
            <td>Sort Order:</td>
            <td>
                <g:textField id="sortOrder" name="sortOrder" value="${hrDepartmentInstance?.sortOrder}"
                             class="small_sized_txt"/>
            </td>
        </tr>
        <tr>
            <td>Is Active:</td>
            <td>
                <g:if test="${params.action == 'create'}">
                    <g:checkBox name="isActive" checked="true"/>
                </g:if>
                <g:else>
                    <g:checkBox name="isActive" value="${hrDepartmentInstance?.isActive}"
                                checked="${hrDepartmentInstance?.isActive}"/>
                </g:else>
            </td>
        </tr>
    </table>
</div>--}%





