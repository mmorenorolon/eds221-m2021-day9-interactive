library(tidyverse)
library(palmerpenguins)


#plot code with error
ggplot(penguins_subset, x = flipper_length_mm, y = body_mass_g) +
  geom_point()

#Reprex Steps
# 1. Create data in code so other people can work with it

# 2. Subset penguins to just the data I need to reproduce the error
penguins_subset <- penguins %>% 
  select(flipper_length_mm, body_mass_g) %>% 
  slice_head(n = 5)

# 3. Use 'datapasta' so anyone can copy paste the df without having to download it
datapasta::df_paste(penguins_subset)

data.frame(
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L),
        body_mass_g = c(3750L, 3800L, 3250L, NA, 3450L)
)

# 4. Create a reprex (what will be shared)
library(tidyverse)

penguins <- data.frame(
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L),
  body_mass_g = c(3750L, 3800L, 3250L, NA, 3450L)
  )
  
ggplot(penguins, x = flipper_length_mm, y = body_mass_g) +
    geom_point()

#### Copy the code in step 4 and run reprex() function. When it says Reprex output is on the clipboard, paste the output 
``` r
library(tidyverse)

penguins <- data.frame(
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L),
  body_mass_g = c(3750L, 3800L, 3250L, NA, 3450L)
)

ggplot(penguins, x = flipper_length_mm, y = body_mass_g) +
  geom_point()
#> Error in `geom_point()`:
#> ! Problem while setting up geom.
#> ℹ Error occurred in the 1st layer.
#> Caused by error in `compute_geom_1()`:
#> ! `geom_point()` requires the following missing aesthetics: x and y.
```

<sup>Created on 2025-08-21 with [reprex v2.1.1](https://reprex.tidyverse.org)</sup>
  
