---
title: "Descargas"
date: 2026-05-18T00:00:00-04:00
draft: false
image: "img/cgv-logo.jpg"
---

<section class="download-page">
  <p class="lead">
    Descargue CGV Presenter para usar cursos, presentaciones, canciones y cuestionarios desde una computadora local.
  </p>

  <div class="download-grid">
    <article class="download-card">
      <h2>macOS</h2>
      <p>Para computadoras Mac con Apple Silicon.</p>
      <a id="cgv-presenter-macos-download" class="download-button" href="https://github.com/Cultivados-en-Gracia-y-Verdad/herramientas/releases/download/CGV-Presenter-v1.1.12/CGV.Presenter-darwin-arm64-1.1.12.zip">
        Descargar para macOS
      </a>
      <small id="cgv-presenter-macos-version">Versión 1.1.12 · ZIP</small>
    </article>
    <article class="download-card">
      <h2>Windows</h2>
      <p>Para computadoras Windows.</p>
      <a id="cgv-presenter-windows-download" class="download-button" href="https://github.com/Cultivados-en-Gracia-y-Verdad/herramientas/releases/download/CGV-Presenter-v1.0.1/CGV.Presenter-1.0.1.Setup.exe">
        Descargar para Windows
      </a>
      <small id="cgv-presenter-windows-version">Versión 1.0.1 · EXE</small>
      <small id="cgv-presenter-windows-note" class="download-muted">Se actualizará cuando esté disponible la nueva versión para Windows.</small>
    </article>
  </div>

  <p class="download-note">
    CGV Presenter funciona offline. Después de instalarlo, los cursos pueden descargarse y usarse localmente sin depender del internet durante la enseñanza.
  </p>

  <p>
    <a class="download-button" href="/cgv-presenter/">
      Ver manual de uso
    </a>
  </p>
</section>

<script>
(() => {
  const releaseApiUrl = "https://api.github.com/repos/Cultivados-en-Gracia-y-Verdad/herramientas/releases/latest";
  const versionPattern = /CGV-Presenter-v(.+)$/;
  const macLink = document.getElementById("cgv-presenter-macos-download");
  const macVersion = document.getElementById("cgv-presenter-macos-version");
  const windowsLink = document.getElementById("cgv-presenter-windows-download");
  const windowsVersion = document.getElementById("cgv-presenter-windows-version");
  const windowsNote = document.getElementById("cgv-presenter-windows-note");

  const getVersion = release => {
    const match = String(release.tag_name || "").match(versionPattern);
    return match ? match[1] : String(release.name || "").replace(/^CGV Presenter\s*/i, "").trim();
  };

  const findAsset = (assets, pattern) => assets.find(asset => pattern.test(asset.name || ""));

  fetch(releaseApiUrl, { headers: { "Accept": "application/vnd.github+json" } })
    .then(response => response.ok ? response.json() : Promise.reject(new Error("release unavailable")))
    .then(release => {
      const assets = Array.isArray(release.assets) ? release.assets : [];
      const version = getVersion(release);
      const macAsset = findAsset(assets, /(?:mac|darwin).*\.zip$/i);
      const windowsAsset = findAsset(assets, /\.(?:exe|msi)$/i);

      if (macAsset && macLink && macVersion) {
        macLink.href = macAsset.browser_download_url;
        macVersion.textContent = `Versión ${version} · ZIP`;
      }

      if (windowsAsset && windowsLink && windowsVersion) {
        windowsLink.href = windowsAsset.browser_download_url;
        windowsVersion.textContent = `Versión ${version} · ${windowsAsset.name.split(".").pop().toUpperCase()}`;
        if (windowsNote) windowsNote.hidden = true;
      }
    })
    .catch(() => {
      // Keep the hard-coded fallback links visible if GitHub cannot be reached.
    });
})();
</script>
