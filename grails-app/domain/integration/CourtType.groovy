package integration

class CourtType {
    static mapping = {
        table("COURT_TYPE")
        version(false)

    }
    Long id
    String courtNo
    String courtName

    static constraints = {
        courtNo(nullable: false)
        courtName(nullable: false,unique: true)
    }
    String toString(){
        return courtName
    }
}
