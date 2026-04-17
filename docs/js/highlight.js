function highlightOnPage(term) {
  if (!term) return;

  var regex = new RegExp("(" + term + ")", "gi");

  function walk(node) {
    if (node.nodeType === 3) {
      var match = node.nodeValue.match(regex);
      if (match) {
        var span = document.createElement("span");
        span.innerHTML = node.nodeValue.replace(regex, "<mark>$1</mark>");
        node.parentNode.replaceChild(span, node);
      }
    } else if (
      node.nodeType === 1 &&
      node.childNodes &&
      !["SCRIPT", "STYLE"].includes(node.tagName)
    ) {
      for (var i = 0; i < node.childNodes.length; i++) {
        walk(node.childNodes[i]);
      }
    }
  }

  walk(document.body);
}

document.addEventListener("DOMContentLoaded", function () {
  var params = new URLSearchParams(window.location.search);
  var term = params.get("q");

  if (term) {
    highlightOnPage(term.toLowerCase());

    // 🔥 scroll to first match
    setTimeout(function () {
      var first = document.querySelector("mark");
      if (first) {
        first.scrollIntoView({ behavior: "smooth", block: "center" });
      }
    }, 200);
  }
});