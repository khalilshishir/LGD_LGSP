<%@ page import="accounts.AfmBankInfo" %>

%{--

<div class="fieldcontain ${hasErrors(bean: afmBankInfoInstance, field: 'bankName', 'error')} required">
	<label for="bankName">
		<g:message code="afmBankInfo.bankName.label" default="Bank Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bankName" maxlength="100" required="" value="${afmBankInfoInstance?.bankName}"/>
</div>--}%

<div align="center" class="fieldcontain ${hasErrors(bean: afmBankInfoInstance, field: 'bankName', 'error')} required">
    <table style="width: 33%;">
        <tr>
            <td>
                <label for="bankName" style="width: 100%;font-family: Arial;font-weight: bold;color: #000000;">
                    Bank Name
                </label>
            </td>
            <td>
                :
            </td>
            <td>
                <g:textField name="bankName" maxlength="100" required="" value="${afmBankInfoInstance?.bankName}"/>
            </td>
        </tr>

    </table>

    %{--<div style="float: left; font-family: arial; font-size: 13px; font-weight: bold;">
        <g:message code="afmBankInfo.afmBankBranch.label" default="Bank Branch :" />
    </div>--}%

    <div class="detail-list ${hasErrors(bean: afmBankBranchInstance, field: 'afmBankBranch', 'error')} " align="center">
        <ul class="one-to-many">
            <fieldset>
                <g:render template="details"/>
            </fieldset>
        </ul>
    </div>

</div>


