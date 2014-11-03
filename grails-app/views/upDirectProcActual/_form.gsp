<%@ page import="procurement.up.directprocurement.UpDirectProc" %>

%{--jquery form validation starts--}%
<script>
    $(document).ready(function() {
        $('#upDirectProcActualForm').bootstrapValidator({
            // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                UP_PROC_MASTER: {
                    message: 'The Procurement Name is not valid',
                    validators: {
                        notEmpty: {
                            message: 'Procurement is required and cannot be empty'
                        }
                    }
                }
            }
        });
    });
</script>
%{--jquery form validation ends--}%

<div class="col-xs-12">
    <div class="form-group">
        <label for="UP_PROC_MASTER"><g:message code="upDirectProcActual.UP_PROC_MASTER.label" default="UP Procuremetn Master" /></label>
        <g:select id="UP_PROC_MASTER" name="UP_PROC_MASTER.id" from="${upProcMasterList}" optionKey="id" noSelection="['':'Select One']" required="" value="${upDirectProcActualInstance?.UP_PROC_MASTER?.id}" class="form-control"/>
    </div>
</div>

<div class="col-xs-12 detail-list">
    <div class="form-group">
        <ul class="one-to-many">
            <fieldset>
                <li><g:render template="details"/></li>
            </fieldset>
        </ul>
    </div>
</div>

