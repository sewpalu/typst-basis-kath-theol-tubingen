#let bib_state = state("bib_state", bibliography("bibliography.bib", title: none))

#let ivgl(..args, loc: none, note: none) = [Vgl. #cite(..args, supplement:  loc)] + " " + note
#let vgl(..args) = footnote[#ivgl(..args)]

#let vgle(citations) = footnote(
  citations.enumerate().map(indexed => {
    let c = indexed.at(1)
    let prefix = if indexed.at(0) == 0 {"Vgl. "} else  {"vgl. "}
    let supp = if "supp" in c { c.supp } else { none }

    show cite: it => {
      show regex("\.+$"): none // delete trailing dot
      it
    }

    [#prefix#cite(c.key, supplement: c.loc + "​")]
  }).join([; ]) + "."
)

#let iaus(..args, loc: none, note: none) = cite( ..args, supplement: loc) + " " + note
#let aus(..args) = footnote[#iaus( ..args)]
