import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "tips" ]


  connect() {

    console.log(
     this.data
    );
  }

  change(event) {
    fetch("/tips_filter", {
      method: 'POST',
      body: JSON.stringify( { tip_categories: [...event.target.selectedOptions].map(option => option.value)}),
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

function getMetaValue(name) {
  const element = document.head.querySelector(`meta[name="${name}"]`)
  return element.getAttribute("content")
}
