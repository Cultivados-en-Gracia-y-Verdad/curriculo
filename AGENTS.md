# CGV — agent entry point (curriculum side)

This repo holds the **products**: one folder per course, and everything a pipeline stage emits.

The **method** lives in `herramientas/CGV-curriculo/`.

## Read before acting

Three documents, three altitudes. Each owns its rules; none repeats another.

1. **`cgv_hermeneutical_constitution_draft.md`** — *why, and what may never happen.* The
   non-negotiables, the three observation layers, the drift tests, genre.
2. **`WORKFLOW.md`** — *what must happen, in what order, with what evidence.* Phases, gates,
   artifact chain, state model, provenance, ownership, definition of done.
3. **`MANUAL_STANDARD.md`** — *how a manual is built.* Markers, hierarchy, commentary, slides,
   content standard, report protocol, model tiering.

Then, for the book in hand:

4. **`{NN.Curso}/spec.md`** — the book specification.
5. **`{NN.Curso}/blocks.md`** — its literary-unit inventory.
6. **`{NN.Curso}/state.yaml`** — its workflow state. The Manager is authoritative; never infer
   state from conversation history.

If a rule you need is not in one of those, it is not a rule yet. Ask; do not invent it.

## Where things live

```
herramientas/CGV-curriculo/       the method — never book-specific
  .cursor/agents/                 Arquitecto · Escriba · Editor
  .cursor/commands/               /estructura /manual /intro /editor
  .cursor/skills/                 cgv-manual-writer · -structure-architect · -manual-editor
  WORKFLOW.md                     governance: phases, gates, provenance
  MANUAL_STANDARD.md              production: markers, hierarchy, content
  STATE_MODEL.md                  the state machine
  contracts/                      GATE0 · verification independence · attestation
  config/models.yaml              model tiering
  manager/                        the orchestrator (was cgv-MANAGER)
  templates/                      spec · blocks · state
  scripts/                        checks, authority diff, release gate, attestation

curriculo/NN.Curso/               the products — everything a stage emits
  manifest.json                   course entry (Presenter reads slides/manual.md)
  spec.md  blocks.md  state.yaml  book specification · units · workflow state
  observation/                    Observer + Jason: progress JSON, clause IDs
  skeleton/                       Compiler export
  architecture/                   Arquitecto: step0, H2/H1/telos/H3, outline
  manual/                         manual drafts
  reports/                        agent reports, editorial notes
  slides/                         assembled output — Presenter entry, do not reorganize
```

The agents, commands and skills are reachable from any workspace: `~/.cursor/agents`,
`~/.cursor/commands` and `~/.cursor/skills` are **symlinks** into `herramientas/CGV-curriculo`.
Edit the files there, never through the symlink path, and never make a second copy.

## Never

- Write a stage output into `cgv-reader`. That repo owns the Reader, Observer and Compiler
  applications and is a read-only consumer of published data — see its `DATA_CONTRACT.md`.
- Take a skeleton or a manuscript from `~/Downloads`. Compiler exports land in
  `{NN.Curso}/skeleton/`; manuscripts live in `{NN.Curso}/manual/`.
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
