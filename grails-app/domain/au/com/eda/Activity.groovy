package au.com.eda

class Activity {

    String user
    String ipAddress
    String action
    String data

    static constraints = {
        user nullable: true
    }
}
