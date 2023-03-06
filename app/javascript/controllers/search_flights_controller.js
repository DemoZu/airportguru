import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-flights"
export default class extends Controller {
  static targets = ["form", "input", "list"]
  connect() {
    console.log(this.element);
    console.log(this.formTarget);
    console.log(this.listTarget);
  }

  update() {
  const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
  fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      console.log(data)
      this.listTarget.outerHTML = data
    })
  }
}
