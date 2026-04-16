// ---CUSTOM FUNCTIONS---
  // Common
#let hline() = line(length: 100%, stroke: 1pt + gray)


#let embed_pdf(path) = page(margin: (x: 0cm, y: 0cm), header: [], numbering: none)[
  #image(path, height: 100%, width: 100%) 
]

#let maybe-image(path, ..args) = context {
// author: laurmaedje
  let path-label = label(path)
   let first-time = query((context {}).func()).len() == 0
   if first-time or query(path-label).len() > 0 {
    [#image(path, ..args)#path-label]
  } else {
    rect(width: 50%, height: 5em, fill: luma(235), stroke: 1pt)[
      #set align(center + horizon)
      Could not find #raw(path)
    ]
  }
}


// Math
#let det(..content) = math.mat(..content, delim: "|")