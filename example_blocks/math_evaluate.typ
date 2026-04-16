#import "@preview/matset:0.1.0": evaluate, floateval, floatexpr

$ evaluate( 2+3 ) $

#let (f_eq, m_eq, c_eq, k_eq) = (5, 2, 5, 100)

$ evaluate( #f_eq / (#m_eq 69^2 + #c_eq 69 i + #k_eq ) ) $
$ floateval( #f_eq / (#m_eq 69^2 + #c_eq 69 i + #k_eq ) ) $

// ? $ floatexpr( #f_eq / (#m_eq 69^2 + #c_eq 69 i + #k_eq ) ) $