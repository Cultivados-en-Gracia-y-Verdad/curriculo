The format is called YAML (YAML Ain’t Markup Language).

More specifically, your quiz is structured as a YAML data file using:

- key-value pairs
- nested lists
- objects/maps

It is commonly used for:

- configuration files
- datasets
- quizzes/tests
- static site generators
- apps and game content
- structured curriculum content

Your structure specifically is a hierarchical YAML schema:

```
id:
title:
questions:
  - question:
    answers:
      - text:
        correct:
```

This format is ideal for your curriculum app because it is:

- human-readable
- easy to edit manually
- Git-friendly
- easy to parse in JavaScript/Electron/Hugo
- compatible with static content workflows

Your quiz file is essentially:

> a YAML-based quiz dataset schema.