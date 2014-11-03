
<%@ page import="fixedAsset.ASSET_DISPOSAL" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ASSET_DISPOSAL.label', default: 'Asset Disposal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-ASSET_DISPOSAL" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="show-ASSET_DISPOSAL" class="content scaffold-show" role="main">
			%{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div>
			%{--<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>--}%
        <script>
            $(document).ready(function(){
                $("#a").fadeOut(8000);
            });
        </script>
        <g:if test="${flash.message}">
            <div class="panel-body">
                <div id="a" class="alert alert-success" role="alert">
                    <div class="message" role="status">
                        <h3 class="panel-title">${flash.message}</h3>
                    </div>
                </div>
            </div>
        </g:if>
			%{--<ol class="property-list ASSET_DISPOSAL">
			
				<g:if test="${ASSET_DISPOSALInstance?.COMITY_ID}">
				<li class="fieldcontain">
					<span id="COMITY_ID-label" class="property-label"><g:message code="ASSET_DISPOSAL.COMITY_ID.label" default="COMITYID" /></span>
					
						<span class="property-value" aria-labelledby="COMITY_ID-label"><g:link controller="COMITY" action="show" id="${ASSET_DISPOSALInstance?.COMITY_ID?.id}">${ASSET_DISPOSALInstance?.COMITY_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.NAME}">
				<li class="fieldcontain">
					<span id="NAME-label" class="property-label"><g:message code="ASSET_DISPOSAL.NAME.label" default="NAME" /></span>
					
						<span class="property-value" aria-labelledby="NAME-label"><g:fieldValue bean="${ASSET_DISPOSALInstance}" field="NAME"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.ASSET_BOOK_ID}">
				<li class="fieldcontain">
					<span id="ASSET_BOOK_ID-label" class="property-label"><g:message code="ASSET_DISPOSAL.ASSET_BOOK_ID.label" default="ASSETBOOKID" /></span>
					
						<span class="property-value" aria-labelledby="ASSET_BOOK_ID-label"><g:link controller="ASSET_BOOK" action="show" id="${ASSET_DISPOSALInstance?.ASSET_BOOK_ID?.id}">${ASSET_DISPOSALInstance?.ASSET_BOOK_ID?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.SUBMISSION_DATE}">
				<li class="fieldcontain">
					<span id="SUBMISSION_DATE-label" class="property-label"><g:message code="ASSET_DISPOSAL.SUBMISSION_DATE.label" default="SUBMISSIONDATE" /></span>
					
						<span class="property-value" aria-labelledby="SUBMISSION_DATE-label"><g:formatDate date="${ASSET_DISPOSALInstance?.SUBMISSION_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.ACCOUNT_HEAD}">
				<li class="fieldcontain">
					<span id="ACCOUNT_HEAD-label" class="property-label"><g:message code="ASSET_DISPOSAL.ACCOUNT_HEAD.label" default="ACCOUNTHEAD" /></span>
					
						<span class="property-value" aria-labelledby="ACCOUNT_HEAD-label"><g:fieldValue bean="${ASSET_DISPOSALInstance}" field="ACCOUNT_HEAD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.AMOUNT}">
				<li class="fieldcontain">
					<span id="AMOUNT-label" class="property-label"><g:message code="ASSET_DISPOSAL.AMOUNT.label" default="AMOUNT" /></span>
					
						<span class="property-value" aria-labelledby="AMOUNT-label"><g:fieldValue bean="${ASSET_DISPOSALInstance}" field="AMOUNT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.DESCRIPTION}">
				<li class="fieldcontain">
					<span id="DESCRIPTION-label" class="property-label"><g:message code="ASSET_DISPOSAL.DESCRIPTION.label" default="DESCRIPTION" /></span>
					
						<span class="property-value" aria-labelledby="DESCRIPTION-label"><g:fieldValue bean="${ASSET_DISPOSALInstance}" field="DESCRIPTION"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.CREATED_BY}">
				<li class="fieldcontain">
					<span id="CREATED_BY-label" class="property-label"><g:message code="ASSET_DISPOSAL.CREATED_BY.label" default="CREATEDBY" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_BY-label"><g:fieldValue bean="${ASSET_DISPOSALInstance}" field="CREATED_BY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.CREATED_DATE}">
				<li class="fieldcontain">
					<span id="CREATED_DATE-label" class="property-label"><g:message code="ASSET_DISPOSAL.CREATED_DATE.label" default="CREATEDDATE" /></span>
					
						<span class="property-value" aria-labelledby="CREATED_DATE-label"><g:formatDate date="${ASSET_DISPOSALInstance?.CREATED_DATE}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.REMARKS}">
				<li class="fieldcontain">
					<span id="REMARKS-label" class="property-label"><g:message code="ASSET_DISPOSAL.REMARKS.label" default="REMARKS" /></span>
					
						<span class="property-value" aria-labelledby="REMARKS-label"><g:fieldValue bean="${ASSET_DISPOSALInstance}" field="REMARKS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ASSET_DISPOSALInstance?.ID}">
				<li class="fieldcontain">
					<span id="ID-label" class="property-label"><g:message code="ASSET_DISPOSAL.ID.label" default="ID" /></span>
					
						<span class="property-value" aria-labelledby="ID-label"><g:fieldValue bean="${ASSET_DISPOSALInstance}" field="ID"/></span>
					
				</li>
				</g:if>
			
			</ol>--}%
            <div class="panel-body">
                <%@ page import="fixedAsset.ASSET_DISPOSAL" %>


                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'COMITY_ID', 'error')} ">
                            <label for="COMITY_ID">
                                <g:message code="ASSET_DISPOSAL.COMITY_ID.label" default="committee Name :"/>

                            </label>
                            ${ASSET_DISPOSALInstance?.COMITY_ID?.COMITY_NAME}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'NAME', 'error')} ">
                            <label for="NAME">
                                <g:message code="ASSET_DISPOSAL.NAME.label" default="Name :"/>

                            </label>
                            ${ASSET_DISPOSALInstance?.NAME}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'ASSET_BOOK_ID', 'error')} ">
                            <label for="ASSET_BOOK_ID">
                                <g:message code="ASSET_DISPOSAL.ASSET_BOOK_ID.label" default="Asset Name :"/>

                            </label>
                            ${ASSET_DISPOSALInstance?.ASSET_BOOK_ID?.ASSET_NAME}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'SUBMISSION_DATE', 'error')} ">
                            <label for="SUBMISSION_DATE">
                                <g:message code="ASSET_DISPOSAL.SUBMISSION_DATE.label" default="Submission Date :"/>

                            </label>
                            %{--<g:datePicker name="SUBMISSION_DATE" precision="day"  value="${ASSET_DISPOSALInstance?.SUBMISSION_DATE}" default="none" noSelection="['': '']" />--}%
                            ${formatDate(format: 'MM/dd/yyyy', date: ASSET_DISPOSALInstance?.SUBMISSION_DATE)}

                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">

                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'ACCOUNT_HEAD', 'error')} ">
                            <label for="ACCOUNT_HEAD">
                                <g:message code="ASSET_DISPOSAL.ACCOUNT_HEAD.label" default="Account Head :"/>

                            </label>
                            ${ASSET_DISPOSALInstance.ACCOUNT_HEAD}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'REASON', 'error')} ">
                            <label for="AMOUNT">
                                <g:message code="ASSET_DISPOSAL.REASON.label" default="Reason :"/>

                            </label>
                            ${ASSET_DISPOSALInstance?.REASON?.lookup_name}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'AMOUNT', 'error')} ">
                            <label for="AMOUNT">
                                <g:message code="ASSET_DISPOSAL.AMOUNT.label" default="Amount :"/>

                            </label>
                            ${fieldValue(bean: ASSET_DISPOSALInstance, field: 'AMOUNT')}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'AUCTION_AMOUNT', 'error')} ">
                            <label for="AUCTION_AMOUNT">
                                <g:message code="ASSET_DISPOSAL.AUCTION_AMOUNT.label" default="Auction Amount :"/>

                            </label>
                            ${fieldValue(bean: ASSET_DISPOSALInstance, field: 'AUCTION_AMOUNT')}
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'DESCRIPTION', 'error')} ">
                            <label for="DESCRIPTION">
                                <g:message code="ASSET_DISPOSAL.DESCRIPTION.label" default="Description :"/>

                            </label>
                            ${ASSET_DISPOSALInstance?.DESCRIPTION}
                        </div>
                    </div>
                </div>


                <div class="col-xs-6">
                    <div class="form-group">
                        <div class="fieldcontain ${hasErrors(bean: ASSET_DISPOSALInstance, field: 'REMARKS', 'error')} ">
                            <label for="REMARKS">
                                <g:message code="ASSET_DISPOSAL.REMARKS.label" default="Remarks :"/>

                            </label>
                            ${ASSET_DISPOSALInstance?.REMARKS}
                        </div>
                    </div>
                </div>




            </div>
        <div class="panel-body">
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ASSET_DISPOSALInstance?.id}" />
					<g:link class="edit btn btn-primary btn-sm" action="edit" id="${ASSET_DISPOSALInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
        </div>
        </div>
		</div>
	</body>
</html>
