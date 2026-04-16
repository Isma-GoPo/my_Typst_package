#let array = (
  ("1", 70%),
  ("2", image_width),
  ("3", 50%),
)
#for fig in array {
  figure(
    utils.maybe-image("assets/carbon/iteration_final/case"+fig.at(0)+"_reverse_factor.png", width: fig.at(1)), 
    caption: [Tensión de Von Misses resultantes con el cuadro de 1.5mm para el caso #fig.at(0).]
  )
}