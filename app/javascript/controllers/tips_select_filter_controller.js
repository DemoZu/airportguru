import { Controller } from "@hotwired/stimulus"

function getMetaValue(name) {
  const element = document.head.querySelector(`meta[name="${name}"]`)
  return element.getAttribute("content")
}

export default class extends Controller {
    static targets = [ "tips", "remove"]


  connect() {

    console.log(
     this.data
    );
  }

  change(event) {
    //alert(document.getElementById("airport_id").value);
    fetch("/tips_filter", {
      method: 'POST',
      body: JSON.stringify( { tip_categories: [...event.target.selectedOptions].map(option => option.value), airport_id:document.getElementById("airport_id").value}),
      credentials: "include",
      dataType: 'script',
      headers: {
        "X-CSRF-Token": getMetaValue("csrf-token"),
        "Content-Type": "application/json"
      },
    })
      .then(response => response.text())
      .then(html => {
        this.tipsTarget.innerHTML = html
      })
  }
}
