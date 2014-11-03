package access_control
import org.codehaus.groovy.grails.plugins.springsecurity.acl.AclClass

class Access_Control_Menu {

    Integer id
    Role obj_role
    //String menu_text
    AclClass obj_acl_class
    Boolean read_val
    Boolean write_val
    Boolean edit_val
    Boolean delete_val

    static constraints = {
    }

    static  mapping={
        table("access_permission")
        version(false)
        id column: 'id'
        obj_role column:'role_id'
        obj_acl_class column: 'acl_class_id'
    }

}
