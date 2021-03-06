package au.com.eda

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class StoryController extends CrudController<Story> {

    def list() { // For members to view
        if (!params.sort) {
            params.sort = "lastModified"
        }

        List<Story> stories = Story.findAll("from Story s where s.mode = :mode and s.profile.user.status = :status",
                [mode: StoryMode.ACTIVE, status: UserStatus.ACTIVE],
                [max: 20, sort: 'lastModified', order: 'desc'])

        int count = Story.count()

        render(view: "index", model: [stories: stories, numberOfStories: count])
    }

    def get() {
        if (!params.id) {
            response.status = 404
            return
        }

        Story story = Story.get(params.id)
        render(view: "get", model: [story: story])
    }

    def index() {
        // TODO Show all here (for admin view)
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
        render(view: "edit", model: [story: story])
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
