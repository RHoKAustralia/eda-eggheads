package au.com.eda

class Session {

    User user
    String sessionId
    String ipAddress
    String authenticated = false

    static constraints = {
        user nullable: true
    }
}
