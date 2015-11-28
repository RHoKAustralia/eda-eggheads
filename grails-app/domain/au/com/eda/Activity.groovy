package au.com.eda

class Activity {

    String ipAddress
    String action
    String data

    String user

    static constraints = {
        user nullable: true
    }
}
