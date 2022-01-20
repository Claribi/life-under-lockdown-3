library(dplyr)

library(readr)


lul2_d <- read_file('life-under-lockdown-wave2-extract.xlsx')

lul2_d %>%
   mutate(know_facebook = ordered(
  know_facebook,
  levels = c(
    'Nothing at all',
    'A fair amount',
    'A great deal'
    ))) %>%
  group_by(know_facebook) %>%
summarise(n = n(), Beliefs = mean(Beliefs))  






















