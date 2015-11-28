import au.com.eda.Story

class BootStrap {

    def init = { servletContext ->

        new Story(title: "Test", description: "This is a story").save()
        new Story(title: "Test 2", description: "This is another story").save()
    }
    def destroy = {
    }
}
