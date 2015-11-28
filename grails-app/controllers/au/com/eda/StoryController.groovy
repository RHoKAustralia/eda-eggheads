package au.com.eda

import grails.converters.JSON

class StoryController extends AbstractController {

    def index() {
        if (!params.sort) {
            params.sort = "lastModified"
        }

//        List<Story> stories = Story.findAll("from Story s where s.mode = :mode and s.user.status = :status")
        List<Story> stories = [
                new Story(title: "Test", description: "This is a story"),
                new Story(title: "Test 2", description: "This is another story")
        ]



        log.info("w00t!")
        render(view: "index", model: [stories: stories, message: "Hello"])
    }
}
