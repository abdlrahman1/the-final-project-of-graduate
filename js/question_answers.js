document.addEventListener("DOMContentLoaded", function() {
    var replyBtns = document.querySelectorAll(".reply-btn");
    for (var i = 0; i < replyBtns.length; i++) {
      replyBtns[i].addEventListener("click", function() {
        var form = this.nextElementSibling;
        if (form.style.display === "none") {
          form.style.display = "block";
        } else {
          form.style.display = "none";
        }
      });
    }
  });
  