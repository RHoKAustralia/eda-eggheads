package au.com.eda

class EventController extends AbstractController {

    def index() {

        List<Event> events = Event.findAll()

        render(view: "index", model: [events: events])
    }
}
