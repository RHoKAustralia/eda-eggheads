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

    static transients = ['profile', 'story']

    Profile getProfile() {
        return Profile.findByUser(this)
    }

    Story getStory() {
        return Story.findByUser(this)
    }
}
