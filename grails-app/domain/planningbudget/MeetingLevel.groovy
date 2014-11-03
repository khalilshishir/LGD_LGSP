package planningbudget

class MeetingLevel {

    static mapping = {
        table('MEETING_LEVEL')
        version(false)

    }
    long id
    String levelName
    static constraints = {
        levelName(nullable: false,unique: true)
    }
    String toString(){
        return levelName
    }
}
