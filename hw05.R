#第一题
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
birth_year <- Sys.Date() %>%
  format(format = "%Y") %>%
  as.numeric() %>%
  `-` (straw_hat_df$age)%>%
  paste("-",straw_hat_df$birthday, sep= "") %>%
  as.Date()
birth_year
class(birth_year)
  
  
  
  #第二题
  heights <- c(173, 168, 171, 189, 179)
  weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
  heights_and_weights <- data.frame(heights, weights)
  
  heights_and_weights %>%
    mutate(bmi = weights / ((heights / 100)^2)
    ) %>%
    View()