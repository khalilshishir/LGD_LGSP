<%@ page import="fixedAsset.ASSET_MOVEMENT_HISTORY" %>



<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'OLD_STAKEHOLDER_ID', 'error')} ">
	<label for="OLD_STAKEHOLDER_ID">
		<g:message code="ASSET_MOVEMENT_HISTORY.OLD_STAKEHOLDER_ID.label" default="OLDSTAKEHOLDERID" />
		
	</label>
	<g:select id="OLD_STAKEHOLDER_ID" name="OLD_STAKEHOLDER_ID.id" from="${fixedAsset.STAKEHOLDER.list()}" optionKey="id" value="${ASSET_MOVEMENT_HISTORYInstance?.OLD_STAKEHOLDER_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'NEW_STAKEHOLDER_ID', 'error')} ">
	<label for="NEW_STAKEHOLDER_ID">
		<g:message code="ASSET_MOVEMENT_HISTORY.NEW_STAKEHOLDER_ID.label" default="NEWSTAKEHOLDERID" />
		
	</label>
	<g:select id="NEW_STAKEHOLDER_ID" name="NEW_STAKEHOLDER_ID.id" from="${fixedAsset.STAKEHOLDER.list()}" optionKey="id" value="${ASSET_MOVEMENT_HISTORYInstance?.NEW_STAKEHOLDER_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'ASSET_BOOK_ID', 'error')} ">
	<label for="ASSET_BOOK_ID">
		<g:message code="ASSET_MOVEMENT_HISTORY.ASSET_BOOK_ID.label" default="ASSETBOOKID" />
		
	</label>
	<g:select id="ASSET_BOOK_ID" name="ASSET_BOOK_ID.id" from="${fixedAsset.ASSET_BOOK.list()}" optionKey="id" value="${ASSET_MOVEMENT_HISTORYInstance?.ASSET_BOOK_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'DESCRIPTION', 'error')} ">
	<label for="DESCRIPTION">
		<g:message code="ASSET_MOVEMENT_HISTORY.DESCRIPTION.label" default="DESCRIPTION" />
		
	</label>
	<g:textField name="DESCRIPTION" value="${ASSET_MOVEMENT_HISTORYInstance?.DESCRIPTION}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'OLD_LOCATION_ID', 'error')} ">
	<label for="OLD_LOCATION_ID">
		<g:message code="ASSET_MOVEMENT_HISTORY.OLD_LOCATION_ID.label" default="OLDLOCATIONID" />
		
	</label>
	<g:select id="OLD_LOCATION_ID" name="OLD_LOCATION_ID.id" from="${fixedAsset.LOCATION.list()}" optionKey="id" value="${ASSET_MOVEMENT_HISTORYInstance?.OLD_LOCATION_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'NEW_LOCATION_ID', 'error')} ">
	<label for="NEW_LOCATION_ID">
		<g:message code="ASSET_MOVEMENT_HISTORY.NEW_LOCATION_ID.label" default="NEWLOCATIONID" />
		
	</label>
	<g:select id="NEW_LOCATION_ID" name="NEW_LOCATION_ID.id" from="${fixedAsset.LOCATION.list()}" optionKey="id" value="${ASSET_MOVEMENT_HISTORYInstance?.NEW_LOCATION_ID?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'REMARKS', 'error')} ">
	<label for="REMARKS">
		<g:message code="ASSET_MOVEMENT_HISTORY.REMARKS.label" default="REMARKS" />
		
	</label>
	<g:textField name="REMARKS" value="${ASSET_MOVEMENT_HISTORYInstance?.REMARKS}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'ASSIGN_DATE', 'error')} ">
	<label for="ASSIGN_DATE">
		<g:message code="ASSET_MOVEMENT_HISTORY.ASSIGN_DATE.label" default="ASSIGNDATE" />
		
	</label>
	<g:datePicker name="ASSIGN_DATE" precision="day"  value="${ASSET_MOVEMENT_HISTORYInstance?.ASSIGN_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'CREATED_BY', 'error')} ">
	<label for="CREATED_BY">
		<g:message code="ASSET_MOVEMENT_HISTORY.CREATED_BY.label" default="CREATEDBY" />
		
	</label>
	<g:field name="CREATED_BY" type="number" value="${ASSET_MOVEMENT_HISTORYInstance.CREATED_BY}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'CREATED_DATE', 'error')} ">
	<label for="CREATED_DATE">
		<g:message code="ASSET_MOVEMENT_HISTORY.CREATED_DATE.label" default="CREATEDDATE" />
		
	</label>
	<g:datePicker name="CREATED_DATE" precision="day"  value="${ASSET_MOVEMENT_HISTORYInstance?.CREATED_DATE}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: ASSET_MOVEMENT_HISTORYInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="ASSET_MOVEMENT_HISTORY.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${ASSET_MOVEMENT_HISTORYInstance.ID}" required=""/>
</div>

