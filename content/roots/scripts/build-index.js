const fs = require("fs");
const path = require("path");

// 🔥 ALWAYS resolve from project root
const datasetDir = path.join(__dirname, "content/roots/ROOTS-dataset");
const outputDir = path.join(__dirname, "static/roots/ROOTS-dataset");
const outputFile = path.join(outputDir, "index.json");

let results = [];

// ✅ Ensure output folder exists
if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

// 🔍 DEBUG (you can remove later)
console.log("Reading dataset from:", datasetDir);

// ❌ Fail fast if folder missing
if (!fs.existsSync(datasetDir)) {
  console.error("❌ Dataset folder not found:", datasetDir);
  process.exit(1);
}

// 📂 Read dataset files
const files = fs.readdirSync(datasetDir);

files.forEach(file => {
  if (!file.endsWith(".md")) return;

  const filePath = path.join(datasetDir, file);
  const content = fs.readFileSync(filePath, "utf8");

  // Split by verse headers
  const sections = content.split("### ").slice(1);

  sections.forEach(section => {
    const lines = section.split("\n");

    const header = lines[0].trim();

    // Match: "Colosenses 1:1 {#col-1-1}"
    const match = header.match(/^(.*?)\s+\{#(.*?)\}/);

    if (!match) return;

    const title = match[1];
    const id = match[2];

    const body = lines.slice(1).join(" ").replace(/\s+/g, " ").trim();

    results.push({
      title: title,
      id: id,
      content: body,
      url: `/roots/ROOTS-dataset/${file.replace(".md", "")}/#${id}`
    });
  });
});

// 💾 Write file
fs.writeFileSync(outputFile, JSON.stringify(results, null, 2));

console.log(`✅ Index built: ${results.length} entries`);