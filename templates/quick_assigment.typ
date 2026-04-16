#import "../my_typst/preamble.typ": document_style
#import "../my_typst/config.typ": *
#import "../my_typst/utils.typ": *
#import "../my_typst/styling.typ": *

// ------------------------
// PREAMBLE
// ------------------------
#show: document_style
#set heading(numbering: none)

// ------------------------
// DEVELOPMENT
// ------------------------

#align(center)[= #title_name]

#question[Lorem ipsum?]
#lorem(100)

#question[Dolor sit amet?]
#lorem(200)