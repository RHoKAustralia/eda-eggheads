package au.com.eda

abstract class AbstractController {

    protected checkParams() {
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
        this.checkParams()
    }
}
