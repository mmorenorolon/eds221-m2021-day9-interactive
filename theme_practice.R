library(tidyverse)
library(palmerpenguins)

# ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g )) +
#   geom_point(aes(color = species))
#   labs(x = "flipper length",
#        y = "body mass",
#        title = "palmer penguins body size")+
#   theme(panel.grid.major = element_rect(fill = "yellow"),
#         panel.background = element_line(color = "purple"),
#         axis.text = element_text(color = "red"),
#         axis.title = element_text(color = "green"))

#' My really ugly theme
#'
#' @returns
#' @export
#'
#' @examples\
#' ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g )) +
#'  geom_point(aes(color = species)) + my_theme()
  my_theme <- function() {
    theme(panel.grid.major = element_rect(fill = "yellow"),
          panel.background = element_line(color = "purple"),
          axis.text = element_text(color = "red"),
          axis.title = element_text(color = "green"))
  }