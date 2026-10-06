#import "common.typ": *

#let no-number(body) = [
  #set heading(numbering: none)
  #body
]

#let compact-paragraph(body) = {
  set par(first-line-indent: 0em, leading: 0.7em, spacing: 0.7em)
  body
}

#let paper(
  faculty: none,
  document: none,
  institute: none,
  instructor: none,
  semester: none,

  title: none,
  subtitle: none,

  author: none,
  matriculation_number: none,
  studysemester: none,
  course_of_study: none,
  email: none,

  body,
) = {
  set page(
    paper: "a4",
    margin: (
      x: 2.5cm,
      y: 2cm,
    ),
  )

  set quote(block: true, quotes: false)

  show quote: set par(leading: 0.5em)
  show quote: set text(size: 10pt)
  show footnote.entry: set text(size: 10pt)

  set text(
    font: "Libertinus Serif",
    size: 12pt,
    lang: "de",
  )

  set par(
    justify: true,
    first-line-indent: 2em,
    leading: 0.75em,
    spacing: 1em,
  )

  set heading(
    numbering: "1.",
  )

  show heading: it => [
    #v(1em)
    #it
    #v(0.5em)
  ]

  [
    #compact-paragraph()[
      #align(left)[
        *Eberhard Karls Universität Tübingen* \
        #faculty \
        #document \
        #institute \
        Betreuer: #instructor \
        #semester
      ]

      #v(1fr)

      #align(center)[
        #text(size: 22pt, weight: "bold")[#title]
        #v(0.5em)
        #text(size: 16pt, style: "italic")[#subtitle]
      ]

      #v(1fr)

      #align(left)[
        #author \
        Matrikelnr. #matriculation_number \
        #studysemester \
        #course_of_study \
        #email
      ]
    ]

    #pagebreak()

    #outline()

    #pagebreak()

    #counter(page).update(1)
    #set page(
      footer: context align(center, [-- #counter(page).display() --]),
    )

    #body

    #set heading(numbering: none)
    #page[
      = Eigenständigkeitserklärung

      für Hausarbeiten (bzw. äquivalente Studien- und Prüfungsleistungen wie wissenschaftliche Essays, Werkstücke, Portfolio, Referate etc.), Abschlussarbeiten (Bachelor-Arbeiten, Master-Arbeiten, Magister-Arbeiten, Dissertationsschriften etc.) an der Katholisch-Theologischen Fakultät der Universität Tübingen (gültig ab 22.05.2025). Ergänzungen und Erläuterungen sind an folgender Stelle abrufbar: https://uni-tuebingen.de/fakultaeten/katholisch-theologische-fakultaet/studium/formulare/eigenstaendigkeitserklaerung/

      *(1) Allgemeine Eigenständigkeitserklärung:* \

      Hiermit versichere ich, dass ich die vorgelegte Arbeit selbst verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel benutzt habe. Die aus fremden Quellen direkt oder indirekt übernommenen Texte, Gedankengänge, Konzepte, Grafiken usw. habe ich als solche gekennzeichnet und mit vollständigen Verweisen auf die jeweilige Quelle versehen.

      *(2) Im Fall der intendierten Nutzung von KI-Tools bei der Erstellung dieser Arbeit versichere ich:* \

      Ich habe die „Leitlinien zum Umgang mit generativen KI Tools“ der Universität Tübingen sowie die Handreichung „Künstliche Intelligenz in Lehr- und Prüfungskontexten“ (beides: https://uni-tuebingen.de/lehrende/generative-ki-in-lehre-und-forschung/downloadbereich-1/ zur Kenntnis genommen. #footnote[Hinweis: Die dort aufgeführte Muster-Eigenständigkeitserklärung ist für diese Arbeit nicht wirksam.] Im Anhang der vorgelegten Arbeit habe ich eine Tabelle angefügt, welche detailliert darüber informiert, in welchen Einsatzgebieten, zu welchem Zweck und ggf. mit welchem Seiten-/Textbezug ich welches KI-Tool verwendet habe. Die Korrektheit der KI-generierten Inhalte habe ich nach bestem Wissen und Gewissen geprüft. Mir ist bewusst, dass ich die Verantwortung für die in diesem Prozess entstandenen Ergebnisse trage, die sich in meiner Arbeit wiederfinden (etwa bzgl. etwaiger unabsichtlich entstandener Plagiate). Ich habe zur Kenntnis genommen, dass mir allein durch die Entscheidung für oder gegen die Verwendung von KI-Tools keine Vor- oder Nachteile in der Bewertung entstehen.

      *(3)* Die vorliegende Arbeit wurde bisher weder im In- noch im Ausland in gleicher oder ähnlicher Form einer anderen Prüfungsbehörde vorgelegt.

      *(4)* Mir ist bekannt, dass ein Verstoß gegen die Standards guten wissenschaftlichen Arbeitens und die Regeln für die Nutzung von KI-Tools prüfungsrechtliche Konsequenzen haben und insbesondere dazu führen kann, dass die Prüfungsleistung mit „nicht ausreichend“ bzw. die Studienleistung mit „nicht bestanden“ bewertet wird und bei mehrfachem oder schwerwiegendem Täuschungsversuch eine Exmatrikulation erfolgen bzw. ein Verfahren zur Entziehung eines eventuell verliehenen akademischen Titels eingeleitet werden kann.

      #v(4em)

      #line(length: 70%, stroke: (dash: "loosely-dotted"))
      Ort, Datum, Unterschrift
    ]
  ]
}
