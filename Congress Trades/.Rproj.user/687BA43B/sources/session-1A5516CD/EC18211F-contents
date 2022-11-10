
#stocks to import data on
stock_batch <- function(tickers,min_year){
  BatchGetSymbols(tickers,first.date = ymd(paste(min_year,"0101",sep=""))
                  ,thresh.bad.data = .95
                  ,cache.folder = 'stock.cache'
                  ,do.complete.data = T
                  ,be.quiet = T)
}


stock_batch <- function(ticker_symbol,trans_date){
  my.df <- myGetSymbols(ticker = ticker_symbol,
                        i.ticker = 1,
                        length.tickers = 1,
                        src = 'yahoo',
                        first.date = trans_date,
                        last.date = trans_date,
                        do.cache = TRUE,
                        cache.folder = "stock.cache",
                        be.quiet = TRUE)
  
  my.df$ticker <- ticker_symbol
  
  my.df
}

stock.df <- mapply(ticker_symbol = tickers.list$ticker, trans_date = tickers.list$transaction_date, stock_batch)%>%bind_rows()

df.bench <- myGetSymbols(ticker = bench.ticker,
                         i.ticker = 1,
                         length.tickers = 1,
                         src = bench.src,
                         first.date = first.date,
                         last.date = last.date,
                         do.cache = do.cache,
                         cache.folder = cache.folder,
                         be.quiet = be.quiet)

