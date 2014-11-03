package procurement.up.directprocurement

import settings.SchemeInfo
import settings.UnionParishad

class UpDirectProc {

    static mapping = {
        table('UP_DIRECT_PROC')
        version(false)
    }
    long id

    long createdBy = 0
    Date createdDate = new Date()
    long updatedBy = 0
    Date updatedDate = new Date()
    boolean isActive = Boolean.TRUE
    SchemeInfo schemeInfo
    String itemName
    String itemDetails
    double rate
    double amount
    double totalPrice

    UnionParishad unionParishad  //after implemantation acl this value will come from user

    static constraints = {
        unionParishad(nullable: true)
        itemDetails(nullable: true)
    }
}
