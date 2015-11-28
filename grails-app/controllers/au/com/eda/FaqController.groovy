package au.com.eda

class FaqController extends AbstractController {

    def index() {

        List<Faq> questions = Faq.findAll()

        render(view: "index", model: [questions: questions])
    }
}
