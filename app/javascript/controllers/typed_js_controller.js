import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Cinema can fill in the empty spaces of your life", "and your loneliness."],
      typeSpeed: 50,
      loop: true
    })
  }
}
