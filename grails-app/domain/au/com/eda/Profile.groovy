package au.com.eda

import org.grails.databinding.BindingFormat

class Profile {
    User user

    @BindingFormat("dd/MM/yyyy")
    Date dateOfBirth

    String firstName
    String suburb
    State state
    Country country
    File profileImage
    Integer children = 0

    UserType type
    RecipientSubType recipientSubType

    static constraints = {
        recipientSubType nullable: true
        profileImage nullable: true
    }

    static transients = ['profileImageLink', 'story', 'comments', 'numberOfComments']

    String getProfileImageLink() {
        return "${Constants.UPLOAD_BASE_URL}${profileImage?.path}"
    }

    Story getStory() {
        return Story.findByProfile(this)
    }

    List<Comment> getComments() {
        return Comment.findAllByStory(getStory())
    }

    int getNumberOfComments() {
        return getComments().size()
    }
}
