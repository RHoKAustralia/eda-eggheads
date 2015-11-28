package au.com.eda

class Story {

    User user
    String title
    String description
    Date created
    Date lastModified
    Mode mode
    ArrayList<File> photoGallery = []

    Boolean willPayExpenses
    Boolean willCycleInterstate
    Boolean willFlyDonorToThem
    Boolean isSuccessful

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
