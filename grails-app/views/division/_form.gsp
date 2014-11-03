<%@ page import="settings.Division" %>



<div class="col-xs-6">
    <div class="form-group">
        <label for="DIV_ID"><g:message code="division.DIV_ID.label" default="Division Id" /></label>
        <g:textField class="form-control" name="DIV_ID" value="${divisionInstance?.DIV_ID}"/>
    </div>
</div>
<div class="col-xs-6">
    <div class="form-group">
        <label for="DIV_NAME"><g:message code="division.DIV_NAME.label" default="Division Name" /></label>
        <g:textField class="form-control" name="DIV_NAME" value="${divisionInstance?.DIV_NAME}"/>
    </div>
</div>


