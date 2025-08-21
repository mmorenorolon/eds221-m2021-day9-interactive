library(tidyverse)


starwars_sub <- starwars %>% 
  group_by(gender) %>% 
  summarize(mean(height)) %>% 
  slice_head(n = 5)

datapasta::df_paste(starwars %>% 
                      group_by(gender) %>% 
                      summarize(mean(height)) %>% 
                      slice_head(n = 5))

starwars <- data.frame(
  stringsAsFactors = FALSE,
       check.names = FALSE,
            gender = c("feminine", "masculine", NA),
    `mean(height)` = c(NA, NA, 175)
)

#reprex
library(tidyverse)

starwars <- data.frame(
  stringsAsFactors = FALSE,
  check.names = FALSE,
  gender = c("feminine", "masculine", NA),
  `mean(height)` = c(NA, NA, 175)
)

starwars_sub <- starwars %>% 
  group_by(gender) %>% 
  summarize(mean(height)) %>% 
  slice_head(n = 5)

##
``` r
library(tidyverse)

starwars <- data.frame(
  stringsAsFactors = FALSE,
  check.names = FALSE,
  gender = c("feminine", "masculine", NA),
  `mean(height)` = c(NA, NA, 175)
)

starwars_sub <- starwars %>% 
  group_by(gender) %>% 
  summarize(mean(height)) %>% 
  slice_head(n = 5)
#> Error in `summarize()`:
#> ℹ In argument: `mean(height)`.
#> ℹ In group 1: `gender = "feminine"`.
#> Caused by error:
#> ! object 'height' not found
```

<sup>Created on 2025-08-21 with [reprex v2.1.1](https://reprex.tidyverse.org)</sup>
  