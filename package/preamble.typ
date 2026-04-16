#import "utils.typ"
#import "constants.typ": *

// ------------------------
// PREAMBLE
// ------------------------

// ---STYLING---

#let document_style(
    config_dict: none,
    it
  ) = {
  let config = config(config_dict: config_dict)

  set text(font: "Libertinus Serif")
  set text(lang: "es")

  set document(
    author: config.author,
    title: [#config.title_name],
    date: config.date,
    description: config.subject,
  )

  // ---FORMATING---
  

  set page(
    paper: "a4",
    header: [
      #grid(
        columns: (1fr, 3fr),
        align: (left, right),
      )[_#(config.author)_][#config.title_name]
      #align(center)[#line(length: 106%, stroke: 0.5pt)]
    ],
    //footer: rect(fill: aqua)[Footer],
    margin: (top: 5cm, bottom: 2.5cm, x: 2.5cm),
    numbering: "1",
    number-align: center,
  )
  counter(page).update(1)

  set par(
    first-line-indent: (amount: 2em, all: true),
    spacing: 1.5em,
    justify: true,
  )

  set heading(numbering: "1.")
  show heading.where(level: 1): set text(size: 24pt)
  show heading.where(level: 2): set text(size: 20pt)
  show heading.where(level: 3): set text(size: 16pt)
  show heading.where(level: 4): set text(size: 14pt)
  show heading.where(level: 5): set text(size: 12pt)
  show heading.where(level: 6): set text(size: 11pt)
  show heading: set block(above: 2em, below: 1em)
  show heading.where(level: 1): body => {
    pagebreak(weak: true)
    body
  }

  // show ref: it => [[#it]] //reference between "[]" (but the problem is that there are some rendered with "()")

  set math.equation(numbering: "(1)")

  show link: underline // Underlined urls
  show link: set text(fill: blue, weight: 700) // Blue and bold urls

  it
}
