<%@ page import="access_control.User" %>
<%@ page import="access_control.UserRole" %>


<div class="form-holder">
    <table>
        <tr>
            <td><label for="username">
                <g:message code="user.username.label" default="User Name" />
                <span class="required-indicator">*</span>
            </label></td>
            <td><g:textField name="username" required="" value="${userInstance?.username}"/></td>
            <td><label for="password">
                <g:message code="user.password.label" default="Password" />
                <span class="required-indicator">*</span>
            </label></td>
            <td>
                <% if(userInstance.id>0){%>
                <g:passwordField name="Showpassword"  required="" value="${userInstance?.password}"  />   %{--readonly="readonly"--}%
                <%}else{%>
                <g:passwordField name="password"  required="" value="${userInstance?.password}"/>
                <%}%>
            </td>
        </tr>
        <tr>
            <td><strong>Role</strong></td>
            <td><select name="roles" multiple size=5>
                <g:each var="i" in="${access_control.Role.list()}" status="count">
                    <g:if test="${i.id==rolesUsers[count]}">
                        <option value="${i.id}" selected="selected">${i.authority}</option>
                    </g:if>
                    <g:else>

                        ${count = count-1} %{--if content inside roleUsers does not match then hold count on previous index--}%
                        <option value="${i.id}">${i.authority}</option>
                    </g:else>
                </g:each>
            </select></td>
            <td><strong>Email</strong></td>
            <td><g:textField name="email" required="" value="${userInstance?.email}"/></td>
        </tr>



        <tr>
            <td>
                <label for="accountExpired">
                    <g:message code="user.accountExpired.label" default="Account Expired" />

                </label>
            </td>
            <td>
                <g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
            </td>

            <td>
                <label for="accountLocked">
                    <g:message code="user.accountLocked.label" default="Account Locked" />

                </label>

            </td>
            <td>
                <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
            </td>
        </tr>
        <tr>
            <td>
                <label for="enabled">
                    <g:message code="user.enabled.label" default="Enabled" />

                </label>

            </td>
            <td>
                <g:checkBox name="enabled" value="${userInstance?.enabled}" />
            </td>

            <td>
                <label for="passwordExpired">
                    <g:message code="user.passwordExpired.label" default="Password Expired" />

                </label>

            </td>
            <td>
                <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
            </td>
        </tr>
    </table>


</div>
