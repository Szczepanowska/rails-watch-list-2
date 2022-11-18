import { Application } from "@hotwired/stimulus"
import TomSelect from "tom-select";

export default class extends Controller {
  static values = { options: Object }

  connect() {
    new TomSelect(
      this.element ,
      this.optionsValue
    );
  }
}

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
