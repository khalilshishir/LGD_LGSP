<%@ page import="access_control.Access_Control_Menu" %>

    <div class="fieldcontain ${hasErrors(bean: access_Control_MenuInstance, field: 'delete_val', 'error')} ">
        <label for="delete_val">
            <g:message code="access_Control_Menu.delete_val.label" default="Deleteval" />

        </label>
        <g:checkBox name="delete_val" value="${access_Control_MenuInstance?.delete_val}" />
    </div>

    <div class="fieldcontain ${hasErrors(bean: access_Control_MenuInstance, field: 'edit_val', 'error')} ">
        <label for="edit_val">
            <g:message code="access_Control_Menu.edit_val.label" default="Editval" />

        </label>
        <g:checkBox name="edit_val" value="${access_Control_MenuInstance?.edit_val}" />
    </div>

    <div class="fieldcontain ${hasErrors(bean: access_Control_MenuInstance, field: 'obj_acl_class', 'error')} required">
        <label for="obj_acl_class">
            <g:message code="access_Control_Menu.obj_acl_class.label" default="Objaclclass" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="obj_acl_class" name="obj_acl_class.id" from="${org.codehaus.groovy.grails.plugins.springsecurity.acl.AclClass.list()}" optionKey="id" required="" value="${access_Control_MenuInstance?.obj_acl_class?.id}" class="many-to-one"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: access_Control_MenuInstance, field: 'obj_role', 'error')} required">
        <label for="obj_role">
            <g:message code="access_Control_Menu.obj_role.label" default="Objrole" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="obj_role" name="obj_role.id" from="${access_control.Role.list()}" optionKey="id" required="" value="${access_Control_MenuInstance?.obj_role?.id}" class="many-to-one"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: access_Control_MenuInstance, field: 'read_val', 'error')} ">
        <label for="read_val">
            <g:message code="access_Control_Menu.read_val.label" default="Readval" />

        </label>
        <g:checkBox name="read_val" value="${access_Control_MenuInstance?.read_val}" />
    </div>

    <div class="fieldcontain ${hasErrors(bean: access_Control_MenuInstance, field: 'write_val', 'error')} ">
        <label for="write_val">
            <g:message code="access_Control_Menu.write_val.label" default="Writeval" />

        </label>
        <g:checkBox name="write_val" value="${access_Control_MenuInstance?.write_val}" />
    </div>

