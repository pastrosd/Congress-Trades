# Congress-Trades Report
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues) ![Known Vulnerabilities](https://snyk.io/test/github/dwyl/hapi-auth-jwt2/badge.svg?targetFile=package.json) 

In-progress of developememt but outline below.

## Web hosted server:
Access via here: [Congress Trade](https://smartassets.shinyapps.io/Congress_Trades/)

### How to use:
The site will automatically update on the server. There are three charts; 1) shows the number of trades each month, 2) shows the stock tickers that are being bought and 3) shows the stock tickers that are being sold.

The charts are interactive where you can zoom, pan the chart and even save it as a .png file. 

These charts are based off [Plotly](https://plotly.com/).

### Purpose:
Using the congress stock trade disclosures published online to see what member's are trading in the stock market.

Data Source: 

* Disclosures:
The trades are filed here for the [House](https://disclosures-clerk.house.gov/) and here for the [Senate](https://efdsearch.senate.gov/search/home/). It would be very timing consuming in writing something for scrapping these sources, so I am using a third party [Senate Stock Watchers](https://senatestockwatcher.com/) and [House Stock Watchers](https://housestockwatcher.com/). The files that are sourced and updated daily are json files (Found here: [House.json](https://house-stock-watcher-data.s3-us-west-2.amazonaws.com/data/all_transactions.json) and [Senate.json](https://senate-stock-watcher-data.s3-us-west-2.amazonaws.com/aggregate/all_transactions.json)). The data is fetched from this online source everytime the report is opened on the server. 

Model: 
1) Descriptive insight report showing volume and what stocks are being traded.

Decision:
1) Is there more buying or selling each month?
2) What stocks are being traded the most?

Value:
Gain insight in stock trades based on congress member's trades and volume of trades.
