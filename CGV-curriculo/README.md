- # Bible Study Rules

  ## Textual Base
  - All Bible study must be based exclusively on the original-language texts.
  - We will use this as our source manuscript: https://johnwry.github.io/bible-study/docs/sblgnt-txt/
  - New Testament default: Nestle–Aland Greek New Testament, 28th Edition (NA28).
  - Old Testament default: Biblia Hebraica Stuttgartensia (BHS).
  - Modern translations must never be used for observation.
  - Translations may only be referenced if explicitly requested and never as a basis for observation.
  
  ## Observation First
  - All analysis must remain strictly text-bound.
  - Observation precedes interpretation.
  - Observations are limited to grammar, morphology, syntax, discourse markers, and immediate context.
  - No theological synthesis or doctrinal framing is permitted during observation.
  
  ## No External Frameworks
  - Do not impose theological systems, logical models, or scholarly outlines.
  - The text must define its own structure and claims.
  - Apparent tensions or contradictions may be noted but not resolved unless the text resolves them.
  
  ## Grammar Rules
  - All grammatical observations must arise directly from the Greek or Hebrew text.
  - English translations must never determine grammatical conclusions.
  - Grammar may establish what the text asserts, but not theological meaning.
  
  ## Greek and English Presentation
  - Greek text must be written in lowercase.
  - Every Greek word cited must include its English gloss.
  - English glosses must be italicized and enclosed in quotation marks.
  - No Greek word may appear without an accompanying English gloss.
  
  ## Bible Reference Formatting
  - Bible book names must always be written in full (no abbreviations).
  - Traditional naming must be used (e.g., 1 John, 2 John).
  - References must be written out fully.
  - When applicable, references should be compatible with Blue Letter Bible Tagger (NBLA settings).
  
  ## Required Output Structure
  All Bible study outputs must be structured entirely within the following numbered sections:
  
  1. Interlinear (horizontal)
  2. Verb list with full morphology
  3. Case-check table (article + noun combined)
  4. Observations (text-bound)
  5. Summary
  6. Additional notes (non-interpretive, if needed)
  
  No content is permitted outside these sections.
  
  ## Analyze Command Rules
  When the command “analyze” is used, the following apply:
  
  ### Section 1 – Interlinear
  - Greek word followed by English gloss in horizontal format.
  
  ### Section 2 – Verb List with Full Morphology
  Each verb must include:
  - Tense, voice, mood, person, and number
  - Greek lexeme
  - English gloss
  
  ### Section 3 – Case-Check Table
  - Single table combining article + noun.
  - Columns for nominative, accusative, genitive, dative, and vocative using checkmarks only.
  
  ### Section 4 – Observations
  - Strictly grammatical and textual.
  - No interpretation or theology.
  
  ### Section 5 – Summary
  - Restates what the grammar asserts.
  - No doctrinal conclusions.
  
  ### Section 6 – Additional Notes
  - Optional.
  - Must remain non-interpretive.
  
  ## Lexical Definitions (Added Rule)
  - In Section 2 (Verb list with full morphology), every verb must include a short lexical definition.
  - Lexical definitions must come from reputable lexicons:
    - BDAG is the default.
    - LSJ may be used when broader classical sense is helpful.
  - Each lexical entry must include:
    - Greek lexeme
    - English gloss
    - Short, neutral lexical definition
    - Lexicon cited
  
  Lexical definitions must be descriptive, text-bound, and free of theological interpretation or synthesis. Lexicons define semantic range, not meaning-in-context.
  
  ## Voice and Agency
  - Active and passive distinctions must always be observed.
  - Agency may only be assigned where grammar assigns it.
  - Means, instrument, and sphere must be identified grammatically, not theologically.
  
  ## Imperative vs. Indicative
  - The presence or absence of imperatives must be noted.
  - Indicative statements must not be turned into exhortations.
  - Declarative content remains declarative unless the text shifts mode.
  
  ## En Síntesis Rule
  - En Síntesis sections must begin with an H2 header.
  - Markdown headers only.
  - No numbered headers.
  - Every line must begin with a header marker.
  - En Síntesis summarizes observations, not interpretations.
  
  ## Consistency
  - These rules apply to all Bible-related work.
  - If a rule conflicts with convenience, the rule prevails.
  - When uncertain, default to less interpretation, not more.
  - ### 1. Cross-References
  
    - Cross-references that appear **at the end of a sentence** must be placed **after the period**.
    - **Do not use parentheses** for end-of-line references.
    - When listing **multiple references**:
      - Use a **semicolon ( ; )** to separate references from **different books**.
      - Use a **comma ( , )** to separate references from the **same book**, without repeating the book name.
  
    **Example:**
  
    > …the argument is fully developed. 1 Corinthians 3:1, 4, 5:3; 2 Corinthians 3:3.
  
    ------
  
    ### 2. Six-Header Rule (Structural Requirement)
  
    - **All content must fall under one of the six designated headers.**
    - **No content is permitted outside a header**, with **one exception**:
      - **Block quotes** may appear without an additional header.
  
    This rule is absolute and applies to:
  
    - Explanatory text
    - Observations
    - Notes
    - Lists
    - Transitional statements
  
    ------
  
    ### 3. Block Quotes for Lexical and Reference Material
  
    - **Lexical definitions**, **dictionary entries**, **lexicon quotations**, and similar reference material **must always be placed in block quotes**.
    - This includes:
      - Greek or Hebrew lexical definitions
      - Dictionary explanations
      - Quoted reference material
  
    This visually and structurally distinguishes **observation and explanation** from **reference material**.
  
    ------
  
    ### 4. Editorial Intent
  
    These formatting rules exist to ensure:
  
    - Structural consistency across the entire manual
    - Clear separation between **observation**, **explanation**, and **reference material**
    - Compatibility with teaching, print, Word, PDF, and Hugo outputs
