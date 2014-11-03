package lookUp

class Lookup {

    static mapping = {
        table('lookup_type')
        version(false)
    }

    Integer id
    String type_name

    static constraints = {

        id(size:1..25)
        type_name(size: 1..250, nullable: false)

    }

    String toString(){
        return type_name
    }
}
