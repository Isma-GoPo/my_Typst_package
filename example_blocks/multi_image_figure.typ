#import "../../utils.typ"


#let image_grid_height = 85%
#let captions = ([Perfil vertical], [Perfil trasero], [Perfil horizontal e inferior], [Eje pedalier], [Perfil delantero])

#figure(
  grid(
    columns: 2,     // 2 means 2 auto-sized columns
    gutter: 2mm,    // space between columns
    rows: 30%,
    ..captions.enumerate().map(i => 
      figure(
        utils.maybe-image("assets/carbon/directions/direction_part"+str(i.at(0)+1)+".png", height: image_grid_height),
        supplement: none,
        caption: [#i.at(1)]
      )
    ),
  ),
  caption: [Dirección principal a $0º$ de las fibras proyectadas sobre las superficies de cada elemento del cuadro.]
) <fig:fiber_directions>