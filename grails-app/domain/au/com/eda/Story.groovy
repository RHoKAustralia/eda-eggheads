package au.com.eda

import org.joda.time.DateTime

class Story {

    Profile profile
    String title
    String description
    Date created = DateTime.now().toDate()
    Date lastModified = DateTime.now().toDate()
    StoryMode mode = StoryMode.DRAFT
    ArrayList<File> photoGallery = []

    Boolean willPayExpenses = false
    Boolean willCycleInterstate = false
    Boolean willFlyDonorToThem = false
    Boolean isSuccessful = false

    Clinic clinic

    static constraints = {
        isSuccessful nullable: true
        clinic nullable: true
    }

    static transients = ['followers']

    List<Follower> getFollowers() {
        return Follower.findAllByStory(this)
    }
}
