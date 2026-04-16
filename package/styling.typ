#import "config.typ": *

// ------------------------
// GRATER BLOCKS
// ------------------------
#let title_page(
  title_name: title_name, 
  subject: subject, 
  author: author, 
  date_display: date_display,
) = page(
  header: [], /*Empty header for title*/
  numbering: none,
  margin: (left: 4cm, right: 4cm, bottom: 3cm),
  fill: luma(245),
)[
  #line(length: 200%, stroke: (thickness: 4pt /*paint: blue*/))

  #align(horizon + left)[
    #text(size: 24pt, weight: "bold")[
      #title_name
    ]

    #text(size: 14pt)[
      #subject

      _#(author)_
    ]
  ]

  #align(bottom + left)[#text(size: 14pt)[#date_display]]
]

#let appendix_style(body) = {
  set heading(numbering: "A.1.", supplement: [Appendix])
  counter(heading).update(0)
  body
}

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
// TEXT IN BOXES
// ------------------------

#let to-do(it) = {
  //set text(fill: black, weight: "bold")
  align(center)[
    #box(
      fill: rgb("#b00dc944"), 
      inset: 10pt, 
      radius: 2pt,
    )[
      *TO-DO*:\ 
      #it
    ]
  ]
}

#let doubt(it) = {
  //set text(fill: black, weight: "bold")
  align(center)[
    #box(
      fill: rgb("#f8f800"), 
      inset: 10pt, 
      //radius: 2pt,
    )[
      *Doubt*:\ 
      #it
    ]
  ]
}

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