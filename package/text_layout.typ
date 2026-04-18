#import "constants.typ": *

// ------------------------
// SPECIFIC TEXT STYLES
// ------------------------

#let text_ai(it) = {
  set text(fill: green, weight: "extralight")
  emph(it)
}

#let text_paraphrase(it) = { //normally for ai text which I liked
  set text(fill: luma(80))
  emph(it)
}

#let text_draft(it) = {
  set text(fill: fuchsia, weight: "extralight")
  emph(it)
}

#let text_doubt(it) = {
  set text(fill: rgb("#e87918"), weight: "extralight")
  emph(text(size: 20pt)[¿] + it + text(size: 20pt)[?])
}

// ------------------------
// TEXT IN BOXES / CALLOUTS
// ------------------------

#let callout_centered(message, colour, it) = {
  //set text(fill: black, weight: "bold")
  align(center)[
    #box(
      fill: colour, 
      inset: 10pt, 
      radius: 2pt,
    )[
      *#message*:\ 
      #it
    ]
  ]
}

#let ToDo(it) = callout_centered(
  rgb("#b00dc944"),
  [TO-DO],
  it
)

#let Doubt(it) = callout_centered(
  rgb("#f8f800"),
  [DOUBT],
  it
)

// ------------------------
// MISCELLANEOUS
// ------------------------

#let footnote_quote(it) = { // Footnote to later pass into a bib quote
  footnote[
    #highlight(fill: rgb("#898989"))[
      #it
    ]
  ]
}

#let question(question_tittle) = [
  \ 
  #h(2em) 
  #text(question_tittle, size: 14pt, weight: "bold") 
]