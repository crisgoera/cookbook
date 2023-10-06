import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-cookbook"
export default class extends Controller {
  static targets = ["form", "button", "border"]
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

  validate() {
    const length = document.getElementById("cookbook_name").value.length
    if (length > 5 && length < 30 ){
      this.borderTarget.classlist.toggle("border border-success")
    } else {
      this.borderTarget.classlist.toggle("border border-danger")
    }
  }
}
