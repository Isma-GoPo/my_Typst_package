#import "../init.typ": *
#let config_dict = (
  title_name: "Motivation Letter for MSc Artificial Intelligence & Engineering Systems",
  author: "Ismael Gómez Poyato"
)
#let config = config(config_dict: config_dict)

// ------------------------
// PREAMBLE
// ------------------------
#show: it => document_style(config_dict: config_dict, it)
#set heading(numbering: none)
#set page(header:none, margin: (top: 2.5cm),)

// ------------------------
// DEVELOPMENT
// ------------------------

#align(center)[= #config.title_name]

#question[Lorem ipsum?]
#lorem(100)

#question[Dolor sit amet?]
#lorem(200)