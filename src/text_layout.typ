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

#let post_it(message, colour: white, it) = {
  //set text(fill: black, weight: "bold")
  align(center)[
    #box(
      fill: colour, 
      inset: 10pt, 
      radius: 2pt,
    )[
      #set par(first-line-indent: (amount: 0em))
      *#message*
      #v(-3pt)

      #show: it => align(left, it)
      #it
    ]
  ]
}

#let ToDo(it) = post_it(
  [TO-DO],
  colour: rgb("#b00dc944"),
  it
)

#let Doubt(it) = post_it(
  [DOUBT],
  colour: rgb("#f8f800"),
  it
)

#let Correction(it) = post_it(
  [CORRECTION],
  colour: rgb("#d588ff"),
  it
)

#let Comment(it) = post_it(
  text(size: 8pt, fill: gray)[COMMENT],
  colour: rgb("#f8f8f8"),
  {
    set text(fill: gray)
    it
  }
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