package stock

class Stock {

    String item

    static mapping = {
        table 'stock'
        version false
    }

    static constraints = {
        item blank: false, unique: true
    }
    
}
