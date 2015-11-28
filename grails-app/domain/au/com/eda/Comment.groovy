package au.com.eda

import org.joda.time.DateTime

class Comment {
    Story story
    User author
    String comment
    Date created = DateTime.now().toDate()
    Date lastModified = DateTime.now().toDate()
    Boolean edited = false
}