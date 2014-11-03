
<%@ page import="procurement.up.otmprocurement.UpOtmEvaluation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="upprocurement">
		<g:set var="entityName" value="${message(code: 'upOtmEvaluation.label', default: 'ইউপি ও-টি-এম ইভালুয়েশন')}" />
		<title><g:message code="default.list.label/" default="লিস্ট" args="[entityName]" /></title>
	</head>
	<body>
    <p align="right" style="color:#666; font-size: 11px; padding-right: 5px; margin-top: 10px;">
        <a style="color:#666; font-size: 11px;" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label/" default="হোম"/></a>
        |
        <a style="color:#666; font-size: 11px;" href="#"><g:link class="create" action="create"><g:message code="default.new.label/" default="নতুন ইউপি ও-টি-এম ইভালুয়েশন" args="[entityName]" /></g:link></a>
    </p>
    <div id="list-upOtmEvaluation" class="content scaffold-list" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label/" default="ইউপি ও-টি-এম ইভালুয়েশন লিস্ট" args="[entityName]" /></h3>
            </div>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
            <thead>
            <tr>
                        <g:sortableColumn property="upOtmEvaluation.UP_PROC_MASTER" title="${message(code: 'upOtmEvaluation.UP_PROC_MASTER.label', default: 'ইউনিয়ন পরিষদ ক্রয়')}" />

                        <g:sortableColumn property="upOtmEvaluation.TEC" title="${message(code: 'upOtmEvaluation.TEC.label', default: 'দরপত্র মূল্যায়ন কমিটি')}" />
					
						<g:sortableColumn property="EVALUATION_DATE" title="${message(code: 'upOtmEvaluation.EVALUATION_DATE.label', default: 'মূল্যায়ন তারিখ')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${upOtmEvaluationInstanceList}" status="i" var="upOtmEvaluationInstance">
					<tr>

                        <td><g:link action="show" id="${upOtmEvaluationInstance.id}">${fieldValue(bean: upOtmEvaluationInstance, field: "UP_PROC_MASTER.SCHEME_INFO.NAME")}</g:link></td>

                        <td>${fieldValue(bean: upOtmEvaluationInstance, field: "TEC")}</td>

						<td><g:formatDate date="${upOtmEvaluationInstance.EVALUATION_DATE}" format="yyyy-MM-dd"/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
