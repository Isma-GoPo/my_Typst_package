#import "@preview/peano:0.2.1"
#import peano.number: c

#import "@preview/cetz:0.4.2": canvas, draw
#import "@preview/cetz-plot:0.1.3": plot 

#let (f_eq, m_eq, c_eq, k_eq) = (5, 2, 5, 100)

 
#let U_Z(x) = c.div( f_eq, c.add( -m_eq*x*x, c.from(0, c_eq * x), k_eq ) )
#let U_Z_abs(x) = c.abs(U_Z(x))
#let U_Z_arg(x) = c.arg(U_Z(x)).rad()


#let U_Z(omega) = calc.sin(omega)


#figure(
  caption: [Modulo de la respuesta en frecuencia]
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
        tick-step: 0.01,
        //x-tick-step: 1,
        //y-tick-step: 0.1, 
        //y-min: 0, 
        //y-max: 2.5,
        // x-grid: "both",
        // y-grid: "both",
        x-label: "Frecuencia [rad/s]",
        y-label: "Modulo U/Z [-]",
        legend: "inner-north",
        {
          let domain = (0, 30)
    
          plot.add(U_Z_abs, 
            domain: domain, 
            //label: $ sin x  $,
            style: (stroke: black),
            samples: 1000,
            //style: (stroke: (paint: blue, thickness:2pt)),
          )
        })
    }
  )
] <fig:respuesta_modulo>

#figure(
  caption: [Argumento de la respuesta en frecuencia]
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
        y-tick-step: calc.pi/4,
        y-format: plot.formats.multiple-of,
        //x-tick-step: 1,
        //y-min: 0, 
        //y-max: 2.5,
        // x-grid: "both",
        // y-grid: "both",
        x-label: "Frecuencia [rad/s]",
        y-label: [Argumento U/Z [rad]],
        legend: "inner-north",
        {
          let domain = (0, 30)
    
          plot.add(U_Z_arg, 
            domain: domain, 
            //label: $ sin x  $,
            style: (stroke: black),
            samples: 1000,
            //style: (stroke: (paint: blue, thickness:2pt)),
          )
        })
    }
  )
] <fig:respuesta_argumento>