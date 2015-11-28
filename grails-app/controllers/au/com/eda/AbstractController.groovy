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

    def beforeInterceptor = {
        this.logActivity()
    }
}
