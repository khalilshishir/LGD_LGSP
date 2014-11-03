package lookUp

class AllLookup {

    static mapping = {
        table('all_lookup')
        version(false)

        id column: 'ID'
        parentIdAllLookup column: 'parent_id'
    }

    Integer id
    String lookup_name
    Lookup parentIdAllLookup

    static  hasMany = [allLookup:AllLookup]
    static constraints = {

        id(size:1..20)
        lookup_name(size: 1..250, nullable: false)
//        parentIdAllLookup.id(nullable: true)
    }

    String toString(){
        return lookup_name
    }
}
