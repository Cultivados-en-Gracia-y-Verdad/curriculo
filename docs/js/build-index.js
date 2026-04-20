const fs = require("fs");
const path = require("path");

const datasetDir = "./content/roots/ROOTS-dataset";
const outputFile = "./static/roots/ROOTS-dataset/index.json";

let results = [];

fs.readdirSync(datasetDir).forEach(file => {
  if (!file.endsWith(".md")) return;

  const filePath = path.join(datasetDir, file);
  const content = fs.readFileSync(filePath, "utf8");

  const sections = content.split("### ").slice(1);

  sections.forEach(section => {
    const lines = section.split("\n");

    const header = lines[0]; // "Tito 1:1 {#tito-1-1}"
    const match = header.match(/^(.*?) \{#(.*?)\}/);

    if (!match) return;

    const title = match[1];
    const id = match[2];

    const body = lines.slice(1).join(" ");

    results.push({
      title: title,
      content: body.replace(/\n/g, " ").trim(),
      url: `/roots/ROOTS-dataset/${file.replace("-dataset.md", "")}/#${id}`
    });
  });
});

fs.writeFileSync(outputFile, JSON.stringify(results, null, 2));

console.log("ROOTS Dataset index generated:", results.length);