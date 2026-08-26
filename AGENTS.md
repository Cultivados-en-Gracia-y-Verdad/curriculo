# CGV — agent entry point

Loaded on every agent call. Kept deliberately small; the standards live in linked files.

## Read before acting

1. **`CGV-curriculo/WORKFLOW.md`** — the universal production standard. Authority, markers,
   hierarchy, content rules, verification gates, release. Never book-specific.
2. **`CGV-curriculo/cgv_hermeneutical_constitution_draft.md`** — the non-negotiables, the three
   observation layers, and the drift tests every published lesson must pass.
3. **`{NN.Curso}/spec.md`** — the specification for the book you are working on.
4. **`{NN.Curso}/blocks.md`** — its literary-unit inventory.

If a rule you need is not in one of those, it is not a rule yet. Ask; do not invent it.

## Where things live

```
CGV-curriculo/            the method — never book-specific
  .cursor/agents/         Arquitecto · Escriba · Editor
  .cursor/commands/       /estructura /manual /intro /editor
  .cursor/skills/         cgv-manual-writer · -structure-architect · -manual-editor
  WORKFLOW.md             production standard
  templates/              spec + blocks templates
  scripts/                run-manual-checks · check-authority · release-gate · verify-skeleton

NN.Curso/                 the products — everything a stage emits lands here
  manifest.json           course entry (Presenter reads slides/manual.md)
  spec.md                 book specification
  blocks.md               literary-unit inventory
  observation/            Observer + Jason: progress JSON, clause IDs
  skeleton/               Compiler export
  architecture/           Arquitecto: step0 verification, H2/H1/telos/H3, outline
  manual/                 manual drafts
  reports/                agent reports, editorial notes
  slides/                 assembled output — Presenter entry, do not reorganize
```

`curriculo/.cursor/agents` and `.cursor/commands` are symlinks into `CGV-curriculo/.cursor/`.
Cursor requires them at the workspace root; the real files live with the method. Edit them
there, never through the symlink path.

## Never

- Write a stage output into `cgv-reader`. That repo owns the Reader, Observer and Compiler
  applications and is a read-only consumer of published data — see its `DATA_CONTRACT.md`.
- Take a skeleton from `~/Downloads`. Compiler exports land in `{NN.Curso}/skeleton/`.
- Repair an upstream defect downstream. Flag it to the stage that owns it.

## The four things that matter most

- **A script and a reading are two different witnesses. Neither is the gate alone.** If they
  disagree, the verdict is blocked. Never report a script PASS as a verdict.
- **No agent verifies its own claims.** Verification always belongs to a different agent than
  authorship.
- **Authority is enforced, not requested.** `check-authority.py` diffs before/after and fails any
  change outside your clearance. You do not get to explain yourself.
- **A manual is not complete because an AI says so.** It is complete when it satisfies its
  specification and passes every required gate. Default status is NOT RELEASED.
