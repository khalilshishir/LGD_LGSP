<%@ page import="hrms.HrLookupType" %>

<div align="center" class="fieldcontain ${hasErrors(bean: hrLookupTypeInstance, field: 'bankName', 'error')} required">
    <table style="width: 33%;">
        <tr>

            <td>
                <label for="lookupType" style="width: 100%;font-family: Arial;font-weight: bold;color: #000000;">
                    Lookup Type
                </label>
            </td>
            <td>
                :
            </td>
            <td>
                <g:textField id="lookupType" name="lookupType" maxlength="50" required="" value="${hrLookupTypeInstance?.lookupType}" class="form-control"/>
            </td>
        </tr>

        <tr>
            <td>
                <label for="isActive" style="width: 100%;font-family: Arial;font-weight: bold;color: #000000;">
                    <g:message code="hrLookupType.isActive.label" default="Is Active" />
                </label>
            </td>
            <td>
                :
            </td>
            <td>
                <g:if test="${params.action=='create'}">
                    <g:checkBox name="isActive" checked="true"/>
                </g:if>
                <g:else>
                    <g:checkBox name="isActive"  value="${hrLookupTypeInstance?.isActive}" checked="${hrLookupTypeInstance?.isActive}"/>
                </g:else>
            </td>
        </tr>

    </table>
    <%--  for details page here ------------- --%>
    <div class="detail-list ${hasErrors(bean: hrLookupTypeInstance, field: 'hrlookups', 'error')} " align="center">
        <ul class="one-to-many">
            <fieldset>
                <g:render template="details"/>
            </fieldset>
        </ul>
    </div>

</div>

