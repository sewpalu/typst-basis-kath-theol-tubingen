# typst-basis-kath-theol-tubingen

This is a starting point for writing term papers with Typst (mostly) matching the requirements of the Katholisch-Theologische Fakultät Tübingen.

## Usage

1. [Install typst](https://typst.app/open-source/)
2. Copy this repository to somewhere on your device and start writing (modify the files listed below).
3. Compile with `typst compile main.typ`. The output file will be `main.pdf`. Alternatively use any Typst preview plugin or `typst watch main.typ`.
4. After completing the writing process, the bibliography must be post-processed manually. See instructions in `literatur.typ`. Alternatively use a different citation / bibliography stile that is better supported by Typst.

Files to be modified by the writer:

- `einleitung.typ`
- `hauptteil.typ` (or seperate into several files and adapt `main.typ` accordingly)
- `schluss.typ`
- `literatur.typ`
- `bibliography.bib`

## To do

- Set up automatic PDF generation via GitHub CI.
- Improve citation / bibliography (if possible)
