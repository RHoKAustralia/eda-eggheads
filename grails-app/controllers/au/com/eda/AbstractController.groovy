package au.com.eda

abstract class AbstractController {

    def springSecurityService

    protected void logActivity(String data = null) {
        new Activity(
                ipAddress: request.getRemoteAddr(),
                action: "${controllerName}/${actionName}",
                data: data,
                user: springSecurityService.currentUser as User
        ).save()
    }

    protected void checkParams() {
        if (!params.max) {
            params.max = "20"
        }

        if (!params.offset) {
            params.offset = "0"
        }

        if (!params.order) {
            params.order = "desc"
        }
    }

    def beforeInterceptor = {
        this.logActivity()
        this.checkParams()
    }
}
