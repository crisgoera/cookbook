import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-cookbook"
export default class extends Controller {
  static targets = ["form", "button"]
  connect() {
    console.log('Connected')
  }

  toggleForm() {
    this.formTarget.classList.toggle("d-none")
    if (this.buttonTarget.innerHTML == "Add cookbook") {
      this.buttonTarget.innerHTML = "Back"
    } else {
      this.buttonTarget.innerHTML = "Add cookbook"
    }
  }
}
