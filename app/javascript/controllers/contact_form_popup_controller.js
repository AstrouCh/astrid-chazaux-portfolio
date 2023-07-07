import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="contact-form-popup"
export default class extends Controller {
  connect() {
    document.addEventListener("DOMContentLoaded", function() {
      var reachButton = document.querySelector(".reach-button");
      var popup = document.querySelector("#contact-popup");
      var closeButton = document.querySelector(".close-button");

      reachButton.addEventListener("click", function() {
        popup.style.display = "block";
        document.body.style.overflow = "hidden";
      });

      closeButton.addEventListener("click", function() {
        popup.style.display = "none";
        document.body.style.overflow = "auto";
      });
    });
  }
}
