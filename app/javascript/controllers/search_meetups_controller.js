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
    //console.log(this.filterTarget)
    //var checkedList = document.querySelectorAll("input[name^='item[']:checked")
    const ckbChecked = document.querySelectorAll("#filterDiv input[type=checkbox]:checked");
    //console.log(ckbChecked)
    console.log(ckbChecked.length)
    const filter_query = "&category_id="
    for (let item of ckbChecked) {
      if (ckbChecked.length == 1 ) {
        filter_query = filter_query + item.id
      }
      filter_query = filter_query + "_" + item.id
      //... just like an array
      //console.log(item.value, item.id);
    }
    console.log(this.formTarget.action)
    console.log(this.inputTarget.value)
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }

}
