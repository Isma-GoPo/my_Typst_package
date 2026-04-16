#import "../init.typ": *
#let config_dict = ( )

// ------------------------
// PREAMBLE
// ------------------------
#title_page(config_dict: config_dict)
#show: it => document_style(config_dict: config_dict, it)

// ------------------------
// ABSTRACT AND ACKNOWLEGEMENTS PAGES
// ------------------------
// #include "sections/acknowledgments.typ" // Opcional
// #include "sections/abstract.typ" // Mandatory
#page( numbering: none)[
  #text(size: 14pt)[*Abstract*] \ \
  #lorem(130)  
  
  *Key words:*  Lorem, ipsum, dolor

  \ \
  
  #text(size: 14pt)[*Resumen*] \ \
  #lorem(150)  
  
  *Key words:*  Lorem, ipsum, dolor
]

// ------------------------
// OUTLINE PAGE
// ------------------------
#align(horizon)[
  #outline()
]

// ------------------------
// INTRODUCTION
// ------------------------
// #include "sections/glossary.typ"

// #include "sections/introduction.typ"

// #include "sections/theorical_framework.typ"

// ------------------------
// DEVELOPMENT
// ------------------------
= Chapter example
// #include "sections/development.typ"

// #include "sections/calculations.typ"

// #include "sections/results.typ"

// #include "sections/conclusions.typ"

// #include "sections/suggestions.typ"


// ------------------------
// BIBLIOGRAPHY
// ------------------------
#bibliography("../assets/bibliography.yaml", title: [Bibliografía], style: "apa")  <sec:bibliography> // IDK if I preffer the 	"harvard-cite-them-right" style. Also, Typst suggest "ieee" for Engineering

// ------------------------
// APPENDIX
// ------------------------
#show: appendix_style
= Tables and Data <sec:app1>

= Documments <sec:app2>
// #utils.embed_pdf("../assets/Factura_2023-10.pdf")

// ------------------------
// BUDGET
// ------------------------
//#include "budget/init.typ"


