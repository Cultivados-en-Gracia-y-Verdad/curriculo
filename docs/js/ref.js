function goToRef() {
  let input = document.getElementById("refInput").value.toLowerCase().trim();

  // simple book detection
  if (input.startsWith("tito")) {
    const match = input.match(/(\d+):(\d+)/);

    if (!match) {
      alert("Usa formato: Tito 1:4");
      return;
    }

    const chapter = match[1];
    const verse = match[2];

    const id = `tit-${chapter}-${verse}`;

    // go directly to page + verse
    window.location.href = `/tito-verbos/#${id}`;
  } else {
    alert("Solo Tito por ahora");
  }
}