#import "@preview/cetz:0.4.2": canvas, draw
#import "@preview/cetz-plot:0.1.3": plot 

// ___________________

#let f1(x) = calc.sin(x)
#set text(size: 10pt)

#figure(
  caption: "Onda senoidal"
)[
  #canvas(
    //length: 1cm,
    {
      import draw: *
    
      // Set-up a thin axis style
      set-style(
        axes: (stroke: .5pt, tick: (stroke: .5pt)),
        legend: (stroke: none, orientation: ttb, 
        item: (spacing: .3), 
        scale: 80%)
      )
    
      plot.plot(
        size: (12, 8),
        x-tick-step: calc.pi/2,
        y-tick-step: 2, 
        y-min: -2.5, 
        y-max: 2.5,
        // x-grid: "both",
        // y-grid: "both",
        x-label: "Time [sec]",
        y-label: "Magnitude [1]",
        legend: "inner-north",
        {
          let domain = (-1.1 * calc.pi, +1.1 * calc.pi)
    
          plot.add(f1, 
            domain: domain, 
            label: $ sin x  $,
            style: (stroke: black)
            //style: (stroke: (paint: blue, thickness:2pt)),
          )
        })
    }
  )
]