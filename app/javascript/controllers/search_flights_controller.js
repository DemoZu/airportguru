import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-flights"
export default class extends Controller {
  static targets = ["form", "input", "list"]
  connect() {
    console.log('connected')
  }
}
