package au.com.eda

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN'])
abstract class CrudController<T> extends AbstractController {

    protected void checkCrudParams() {

        if (actionName == 'index') {
            if (!params.max) {
                params.max = "20"
            }

            if (!params.offset) {
                params.offset = "0"
            }

            if (!params.order) {
                params.order = "desc"
            }

//        TODO Look for sortable column (i.e. lastModified) and apply sort
        }
    }

    def index() {

    }

    def create() {

    }

    def edit() {

    }

    @Transactional
    def save() {
    }

    @Transactional
    def update() {

    }

    def beforeInterceptor = {
        this.logActivity()
        this.checkCrudParams()
    }


}
