function goToRef() {
  var input = document.getElementById("verseInput").value
    .toLowerCase()
    .trim();

  var book = null;
  var path = null;

  if (input.includes("tito")) {
    book = "tit";
    path = "tito-verbos";
  }

  else if (input.includes("romanos") || input.includes("rom")) {
    book = "rom";
    path = "romanos-verbos";
  }

  else if (input.includes("galatas") || input.includes("gal")) {
    book = "gal";
    path = "galatas-verbos";
  }

  // ❗ If no book detected → do nothing (no popup)
  if (!book) {
    return;
  }

  // Try to find chapter:verse
  var match = input.match(/(\d+):(\d+)/);

  if (match) {
    var chapter = match[1];
    var verse = match[2];
    var id = book + "-" + chapter + "-" + verse;

    window.location.href = "/roots/" + path + "/#" + id;
    return;
  }

  // Try to find chapter only
  var chapterOnly = input.match(/(\d+)/);

  if (chapterOnly) {
    var chapter = chapterOnly[1];
    var id = book + "-" + chapter + "-1";

    window.location.href = "/roots/" + path + "/#" + id;
    return;
  }

  // Just the book → go to page
  window.location.href = "/roots/" + path + "/";
}