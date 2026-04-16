#import "@preview/glossy:0.9.0": *

= Glosario <sec:glossary>
#{
  set heading(outlined: false, numbering: none)
  show heading: none // for custom former heading-name and reference
  
  show: init-glossary.with(yaml("glossary.yaml"))
  glossary(
    title: [Glosario],
    sort: true, // Optional: whether or not to sort the glossary
    ignore-case: true, // Optional: ignore case when sorting terms
    show-all: true, // Optional; Show all terms even if unreferenced
  ) 
}