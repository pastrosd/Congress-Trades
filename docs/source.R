#function to pull congress trade data from third party site
congress_json <- function(){
  
  #senate
  senate.json <- "https://senate-stock-watcher-data.s3-us-west-2.amazonaws.com/aggregate/all_transactions.json"
  
  senate.file <- fromJSON(txt= senate.json)
  
  senate.file$congress_type <- "senate"
  senate.file$disclosure_date <- as.Date(senate.file$disclosure_date,"%m/%d/%Y")
  senate.file$transaction_date <- as.Date(senate.file$transaction_date,"%m/%d/%Y")
  
  senate.file.df <- senate.file%>%
    select(disclosure_date,transaction_date,
           congress_member = senator, link = ptr_link,
           ticker,amount,type, congress_type)
  senate.file$disclosure_date <- as.Date(senate.file$disclosure_date,"%m/%d/%Y")
  senate.file$transaction_date <- as.Date(senate.file$transaction_date,"%m/%d/%Y")
  
  
  #house
  house.json <- "https://house-stock-watcher-data.s3-us-west-2.amazonaws.com/data/all_transactions.json"
  
  house.file <- fromJSON(txt= house.json)
  
  house.file$congress_type <- "house"
  house.file$disclosure_date <- as.Date(house.file$disclosure_date,"%m/%d/%Y")
  house.file$transaction_date <- as.Date(house.file$transaction_date,"%Y-%m-%d")
  
  house.file.df <- house.file%>%
    select(disclosure_date,transaction_date,
           congress_member = representative, link = ptr_link,
           ticker,amount, type, congress_type)
  
  #union df
  congress.df <- rbind(senate.file.df,house.file.df)
  # congress.df$disclosure_date <- as.Date(congress.df$disclosure_date,"%Y-%m-%d")
  # congress.df$transaction_date <- as.Date(congress.df$transaction_date,"%Y-%m-%d")
  congress.df$position <- case_when(tolower(congress.df$type) %like% "purchase" ~ "purchase",
                                    tolower(congress.df$type) %like% "sale" ~ "sale",
                                    TRUE ~ "unkown") 
  congress.df$position_partial <- case_when(tolower(congress.df$type) %like% "partial" ~ 1,
                                            TRUE ~ 0) 
  
  return(congress.df)
}
