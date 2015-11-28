package au.com.eda

class User {

    String username
    String password
    UserStatus status
    Date lastLoggedIn
    Boolean loggedIn = false

    static constraints = {
        password minSize: 8
    }

    static transients = ['profile']

    Profile getProfile() {
        return Profile.findByUser(this)
    }
}
