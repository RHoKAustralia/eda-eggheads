package au.com.eda

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class ProfileController extends AbstractController {

    def index() {
        if (!params.id) {
            response.status = 404
            return
        }

        Profile profile = Profile.get(params.id)
        render(view: "index", model: [profile: profile])
    }

    def edit() {
        if (!params.id) {
            response.status = 404
            return
        }

        Profile profile = Profile.get(params.id)
        render(view: "edit", model:[profile: profile])
    }

    @Transactional
    def update() {
        Profile profile = Profile.get(params.id)
    }
}