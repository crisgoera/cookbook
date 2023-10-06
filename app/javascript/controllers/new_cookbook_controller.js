import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-cookbook"
export default class extends Controller {
  connect() {
    console.log('Connected')
  }

  toggleForm() {
    console.log("click")
  }
}