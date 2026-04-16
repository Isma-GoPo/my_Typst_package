#import "../init.typ": *

// ------------------------
// PREAMBLE
// ------------------------
#title_page()
#show: document_style

// ------------------------
// OUTLINE PAGE
// ------------------------
#align(horizon)[
  #outline()  
]

// ------------------------
// DEVELOPMENT
// ------------------------

= Cómo funciona Typst
== Funciona bastante bien

Tu-tu-ru

== Maths
When not space between & and equations, it is compact
$lim_x$

And when space is left, it is expanded
$ lim_(x → infinity) (x+1) / x = 1 $

=== Linear algebra
$ mat(..#range(1, 10).chunks(3)) $

$ vec(0,1,2) $
$ vec(0,1,2, delim: "[") $

== Miscelaneous
#lorem(50)