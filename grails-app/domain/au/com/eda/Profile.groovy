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
    Integer children

    UserType type
    RecipientSubType recipientSubType

    static constraints = {
        recipientSubType nullable: true
        profileImage nullable: true
    }

    static transients = ['profileImageLink']

    String getProfileImageLink() {
        return "${Constants.UPLOAD_BASE_URL}${profileImage.path}"
    }
}
