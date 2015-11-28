package au.com.eda

class Clinic {

    String name

    // TODO Expand on this in next iteration

    static constraints = {
    }

    List<Story> getStories() {
        return Story.findAllByClinic(this)
    }
}
