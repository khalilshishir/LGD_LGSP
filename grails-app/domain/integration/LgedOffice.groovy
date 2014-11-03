package integration

class LgedOffice {
    static mapping = {
        table("LGED_OFFICE")
        version(false)

    }
    Long id
    String lgedOfficName

    static constraints = {
        lgedOfficName(nullable: false,unique: true)
    }
    String toString(){
        return lgedOfficName
    }
}
