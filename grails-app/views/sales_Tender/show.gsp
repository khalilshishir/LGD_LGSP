<%@ page import="procurement.pmu.Sales_Tender" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'sales_Tender.label', default: 'Sales_Tender')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-sales_Tender" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                   default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-sales_Tender" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list sales_Tender">

        <g:if test="${sales_TenderInstance?.SALES_TENDER_CODE}">
            <li class="fieldcontain">
                <span id="SALES_TENDER_CODE-label" class="property-label"><g:message
                        code="sales_Tender.SALES_TENDER_CODE.label" default="SALESTENDERCODE"/></span>

                <span class="property-value" aria-labelledby="SALES_TENDER_CODE-label"><g:fieldValue
                        bean="${sales_TenderInstance}" field="SALES_TENDER_CODE"/></span>

            </li>
        </g:if>

        <g:if test="${sales_TenderInstance?.TENDER_NAME}">
            <li class="fieldcontain">
                <span id="TENDER_NAME-label" class="property-label"><g:message code="sales_Tender.TENDER_NAME.label"
                                                                               default="TENDERNAME"/></span>

                <span class="property-value" aria-labelledby="TENDER_NAME-label"><g:fieldValue
                        bean="${sales_TenderInstance}" field="TENDER_NAME"/></span>

            </li>
        </g:if>

        <g:if test="${sales_TenderInstance?.PROCURE_NAME}">
            <li class="fieldcontain">
                <span id="PROCURE_NAME-label" class="property-label"><g:message code="sales_Tender.PROCURE_NAME.label"
                                                                                default="PROCURENAME"/></span>

                <span class="property-value" aria-labelledby="PROCURE_NAME-label"><g:fieldValue
                        bean="${sales_TenderInstance}" field="PROCURE_NAME"/></span>

            </li>
        </g:if>

        <g:if test="${sales_TenderInstance?.FILE_UPLOAD}">
            <li class="fieldcontain">
                <span id="FILE_UPLOAD-label" class="property-label"><g:message code="sales_Tender.FILE_UPLOAD.label"
                                                                               default="FILEUPLOAD"/></span>

                <span class="property-value" aria-labelledby="FILE_UPLOAD-label"><g:fieldValue
                        bean="${sales_TenderInstance}" field="FILE_UPLOAD"/></span>

            </li>
        </g:if>

        <g:if test="${sales_TenderInstance?.PUBLISHED_DATE}">
            <li class="fieldcontain">
                <span id="PUBLISHED_DATE-label" class="property-label"><g:message
                        code="sales_Tender.PUBLISHED_DATE.label" default="PUBLISHEDDATE"/></span>

                <span class="property-value" aria-labelledby="PUBLISHED_DATE-label"><g:fieldValue
                        bean="${sales_TenderInstance}" field="PUBLISHED_DATE"/></span>

            </li>
        </g:if>

        <g:if test="${sales_TenderInstance?.REMARKS}">
            <li class="fieldcontain">
                <span id="REMARKS-label" class="property-label"><g:message code="sales_Tender.REMARKS.label"
                                                                           default="REMARKS"/></span>

                <span class="property-value" aria-labelledby="REMARKS-label"><g:fieldValue
                        bean="${sales_TenderInstance}" field="REMARKS"/></span>

            </li>
        </g:if>

        <g:if test="${sales_TenderInstance?.CREATEDATE}">
            <li class="fieldcontain">
                <span id="CREATEDATE-label" class="property-label"><g:message code="sales_Tender.CREATEDATE.label"
                                                                              default="CREATEDATE"/></span>

                <span class="property-value" aria-labelledby="CREATEDATE-label"><g:formatDate
                        date="${sales_TenderInstance?.CREATEDATE}"/></span>

            </li>
        </g:if>

        <g:if test="${sales_TenderInstance?.ISACTIVE}">
            <li class="fieldcontain">
                <span id="ISACTIVE-label" class="property-label"><g:message code="sales_Tender.ISACTIVE.label"
                                                                            default="ISACTIVE"/></span>

                <span class="property-value" aria-labelledby="ISACTIVE-label"><g:formatBoolean
                        boolean="${sales_TenderInstance?.ISACTIVE}"/></span>

            </li>
        </g:if>

        <g:if test="${sales_TenderInstance?.CREATEBY}">
            <li class="fieldcontain">
                <span id="CREATEBY-label" class="property-label"><g:message code="sales_Tender.CREATEBY.label"
                                                                            default="CREATEBY"/></span>

                <span class="property-value" aria-labelledby="CREATEBY-label"><g:fieldValue
                        bean="${sales_TenderInstance}" field="CREATEBY"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${sales_TenderInstance?.id}"/>
            <g:link class="edit" action="edit" id="${sales_TenderInstance?.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
