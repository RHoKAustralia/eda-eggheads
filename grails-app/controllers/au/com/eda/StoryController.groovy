package au.com.eda

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class StoryController extends AbstractController {

    def index() {
        if (!params.sort) {
            params.sort = "lastModified"
        }

        List<Story> stories = Story.findAll("from Story s where s.mode = :mode and s.user.status = :status",
                [mode: StoryMode.ACTIVE, status: UserStatus.ACTIVE],
                params)

        render(view: "index", model: [stories: stories])
    }

    def get() {
        if (!params.id) {
            response.status = 404
            return
        }

        Story story = Story.get(params.id)
        render(view: "get", model: [story: story])
    }

    def create() {
        render(view: "create")
    }

    def edit() {
        if (!params.id) {
            response.status = 404
            return
        }

        Story story = Story.get(params.id)
        render(view: "edit", model:[story: story])
    }

    @Transactional
    def save() {
        Story story = new Story()
        story.properties = params
    }

    @Transactional
    def update() {
        Story story = Story.get(params.id)
        story.title = params.title
        story.description = params.description
    }

    @Secured(['ROLE_ADMIN'])
    def approve() {

    }
}
