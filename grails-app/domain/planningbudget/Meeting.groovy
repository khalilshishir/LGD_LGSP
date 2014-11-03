package planningbudget

import settings.District
import settings.Division
import settings.UnionParishad
import settings.Upazila
import settings.Ward

import java.sql.Time

class Meeting {
    static mapping = {
        table("MEETING")
        version(false)
        unionParishad column: 'UNION_PARISHAD_ID'
    }
    long id
    String subject
    MeetingLevel meetingLevel
    Date meetingDate
    Date startTime
    Date endTime
    Division division
    District district
    Upazila upazila
    UnionParishad unionParishad
    Ward ward
    String minutes
    int numberOfAttendent
    int numberOfWomenAttendent
    int numberOfVoter
    static constraints = {
subject(nullable: false)
        meetingLevel(nullable: false)
        meetingDate(nullable: false)
        startTime(nullable: false)
        endTime(nullable: false)
        numberOfAttendent(nullable: false)
        numberOfWomenAttendent(nullable: false)
        numberOfVoter(nullable: false)
        minutes(nullable: false)
        unionParishad(nullable: false)
    }
    String toString(){
        return subject
    }
}
