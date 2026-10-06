#import "template.typ": *

= Literaturverzeichnis

#set heading(numbering: none)
#set par(
  justify: true,
  first-line-indent: 0em,
  hanging-indent: 1em,
  leading: 0.75em,
  spacing: 1em,
)

== Primärliteratur

TODO: fill manually by copying from below

== Sekundärliteratur

TODO: fill manually by copying from below

// TODO: uncomment the following line once literature has been copied to above
// #show bibliography: it => none
#bibliography("bibliography.bib", style: "kath-theol-tubingen.csl", title: none)
