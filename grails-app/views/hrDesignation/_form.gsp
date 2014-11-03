<%@ page import="hrms.HrDesignation" %>

<div class="col-xs-4">
    <div class="form-group">
        <label for="designationName"><g:message code="hrDesignation.designationName.label" default="Designation Name" /></label>
        <g:textField class="form-control" id="designationName" name="designationName" maxlength="50" required=""
                     value="${hrDesignationInstance?.designationName}" />
    </div>
</div>
<div class="col-xs-4">
    <div class="form-group">
        <label for="shortName"><g:message code="hrDesignation.shortName.label" default="Short Name" /></label>
        <g:textField class="form-control" id="shortName" name="shortName" maxlength="50" required=""
                     value="${hrDesignationInstance?.shortName}" />
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="sortOrder"><g:message code="hrDesignation.sortOrder.label" default="Sort Order" /></label>
        <g:textField class="form-control" id="sortOrder" name="sortOrder" required="" value="${hrDesignationInstance?.sortOrder}"/>
    </div>
</div>

<div class="col-xs-4">
    <div class="form-group">
        <label for="isActive"><g:message code="hrDesignation.isActive.label" default="Is Active" /></label>
        <g:if test="${params.action == 'create'}">
            <g:checkBox name="isActive" checked="true"/>
        </g:if>
        <g:else>
            <g:checkBox name="isActive" value="${hrDesignationInstance?.isActive}"
                        checked="${hrDesignationInstance?.isActive}"/>
        </g:else>
    </div>
</div>



%{--
<div id="wrapper">
    <table class="promint_block">
        <tr class="tdSpaceCompress">
            <td>Designation Name:</td>
            <td>
                <g:textField id="designationName" name="designationName" maxlength="50" required="" value="${hrDesignationInstance?.designationName}" class="mid_sized_txt"/>
            </td>
        </tr>

        <tr>
            <td>Short Name:</td>
            <td>
                <g:textField id="shortName" name="shortName" value="${hrDesignationInstance?.shortName}" class="small_sized_txt"/>
            </td>
        </tr>

        <tr>
            <td>Is Active:</td>
            <td>
                <g:if test="${params.action=='create'}">
                    <g:checkBox name="isActive" checked="true"/>
                </g:if>
                <g:else>
                    <g:checkBox name="isActive"  value="${hrDesignationInstance?.isActive}" checked="${hrDesignationInstance?.isActive}"/>
                </g:else>
            </td>
        </tr>

        <tr>
            <td>Sort Order:</td>
            <td>
                <g:textField id="sortOrder" name="sortOrder" value="${hrDesignationInstance?.sortOrder}" class="small_sized_txt"/>
            </td>
        </tr>
    </table>
</div>
--}%



