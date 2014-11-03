package planningbudget

class SchemeCategory {
    static mapping = {
        table('SCHEME_CATEGORY')
        version(false)

    }
    long id
    String schemeCategoryName
    static constraints = {
        schemeCategoryName(nullable: false,unique: true)
    }
    String toString(){
        return schemeCategoryName
    }
}
