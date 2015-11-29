package au.com.eda

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class ProfileController extends AbstractController {

    def index() {
        def user = springSecurityService.currentUser as User
        Profile profile = user.getProfile()
        render(view: "index", model: [profile: profile])
    }

    def edit() {
        def user = springSecurityService.currentUser as User
        Profile profile = user.getProfile()
        render(view: "edit", model:[profile: profile])
    }

    @Transactional
    def update() {
        Profile profile = Profile.get(params.id)
    }
}