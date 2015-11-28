package au.com.eda

import org.joda.time.DateTime

class Event {

    String title
    String description
    Date date
    Date created = DateTime.now().toDate()
    Date lastModified = DateTime.now().toDate()

    static constraints = {
    }
}
