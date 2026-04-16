#import "../init.typ": *
#let config = config(config_dict: yaml("config.yaml"))

// ------------------------
// PREAMBLE
// ------------------------
#show: document_style
#set heading(numbering: none)

// ------------------------
// DEVELOPMENT
// ------------------------

#align(center)[= #config.title_name]

#question[Lorem ipsum?]
#lorem(100)

#question[Dolor sit amet?]
#lorem(200)