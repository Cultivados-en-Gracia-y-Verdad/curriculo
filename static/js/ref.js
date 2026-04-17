let pages = null;

// 🔥 load index FIRST and store it
function loadIndex(callback) {
  if (pages !== null) {
    callback();
    return;
  }

  fetch(window.location.origin + '/index.json')
    .then(res => res.json())
    .then(data => {
      pages = data;
      console.log("INDEX LOADED:", pages.length);
      callback();
    })
    .catch(err => {
      console.error("ERROR LOADING INDEX:", err);
    });
}

function highlight(text, term) {
  if (!term) return text;

  var regex = new RegExp("(" + term + ")", "gi");
  return text.replace(regex, "<mark>$1</mark>");
}

function goToRef() {
  var input = document.getElementById("verseInput").value
    .toLowerCase()
    .trim();

  var resultsDiv = document.getElementById("results");
  resultsDiv.innerHTML = "";

  // 🔥 1. Reference jump (same as before)
  var refMatch = input.match(/(\d+):(\d+)/);

  if (refMatch) {
    var book = null;
    var path = null;

    if (input.includes("tito")) {
      book = "tit";
      path = "tito-verbos";
    } else if (input.includes("romanos") || input.includes("rom")) {
      book = "rom";
      path = "romanos-verbos";
    } else if (input.includes("galatas") || input.includes("gal")) {
      book = "gal";
      path = "galatas-verbos";
    }

    if (!book) return;

    var id = book + "-" + refMatch[1] + "-" + refMatch[2];

    window.location.href = "/roots/" + path + "/#" + id;
    return;
  }

  // 🔥 2. LOAD index, THEN search
  loadIndex(function () {

    if (!pages || pages.length === 0) {
      resultsDiv.innerHTML = "<p>Error cargando búsqueda</p>";
      return;
    }

 var seen = new Set();

var results = pages.filter(function(p) {
  var text = (p.title + " " + p.content).toLowerCase();
  return text.includes(input);
}).filter(function(p) {
  if (seen.has(p.url)) return false;
  seen.add(p.url);
  return true;
});

    if (results.length === 0) {
      resultsDiv.innerHTML = "<p>No se encontraron resultados</p>";
      return;
    }

// limit results (optional but recommended)
results = results.slice(0, 10);

results.forEach(function(r) {
  var link = document.createElement("a");
  link.href = r.url + "?q=" + encodeURIComponent(input);
  link.style.display = "block";
  link.style.marginBottom = "12px";

  // 🔥 find where the match occurs
  var index = r.content.toLowerCase().indexOf(input);

  // 🔥 center snippet around the match
  var start = Math.max(0, index - 50);
  var snippet = r.content.substring(start, start + 120);

  // 🔥 highlight
  var highlightedSnippet = highlight(snippet, input);
  var highlightedTitle = highlight(r.title, input);

  link.innerHTML =
    "<strong>" + highlightedTitle + "</strong><br>" +
    "<small>" + highlightedSnippet + "...</small>";

  resultsDiv.appendChild(link);
});
  });
}
document.addEventListener("DOMContentLoaded", function () {
  var input = document.getElementById("verseInput");

  if (input) {
    input.addEventListener("input", function () {
      document.getElementById("results").innerHTML = "";
    });
  }
});