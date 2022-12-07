# Congress-Trades Report

In-progress of developememt but outline below.

## Web hosted server:
Access via here: https://smartassets.shinyapps.io/Congress_Trades/

### How to use:
The site will automatically update on the server. There are three charts; 1) shows the number of trades each month, 2) shows the stock tickers that are being bought and 3) shows the stock tickers that are being sold.

The charts are interactive where you can zoom, pan the chart and even save it as a .png file. 

These charts are based off Plotly: https://plotly.com/

### Purpose:
Using the congress stock trade disclosures published online to see what member's are trading in the stock market.

Data Source: 

Senate: https://senate-stock-watcher-data.s3-us-west-2.amazonaws.com/aggregate/all_transactions.json

House: https://house-stock-watcher-data.s3-us-west-2.amazonaws.com/data/all_transactions.json

Model: 
1) Descriptive insight report showing volume and what stocks are being traded.

Decision:
1) Is there more buying or selling each month?
2) What stocks are being traded the most?

Value:
Gain insight in stock trades based on congress member's trades and volume of trades.
