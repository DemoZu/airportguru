import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-meetups"
export default class extends Controller {
  static targets = ["form", "input", "list", "filter"]

  connect(){

  }

  update() {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }


  filter() {
  const ckbChecked = document.querySelectorAll("#filterDiv input[type=checkbox]:checked");

    var filter_query = "&category_id="
    for (let item of ckbChecked) {
      filter_query = filter_query + "_" + item.id
    }
    if (ckbChecked.length === 0){
      filter_query = `${filter_query}_0`
    }

    const url = `${this.formTarget.action}?query=${this.inputTarget.value}` + filter_query
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })

  }

}
