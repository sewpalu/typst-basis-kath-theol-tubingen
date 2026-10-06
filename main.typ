#import "template.typ": *
#import "common.typ": *

#bib_state.update(none)

#show: paper.with(
  faculty: "Katholisch-Theologische Fakultät",
  document: "Hausarbeit MODUL",
  institute: "Lehrstuhl für TBD",
  instructor: "Prof. Aulus Agerius",
  semester: "Sommersemester 2099",

  title: "Titel",
  subtitle: "Untertitel",

  author: "Numerius Negidius",
  matriculation_number: "1234567",
  studysemester: "N. Semester",
  course_of_study: "STUDIENGANG",
  email: "numerius.negidius@student.uni-tuebingen.de",
)

#include "einleitung.typ"

#pagebreak()

#include "hauptteil.typ"

#pagebreak()
#set heading(numbering: none)

#include "schluss.typ"

#pagebreak()

#include "literatur.typ"
