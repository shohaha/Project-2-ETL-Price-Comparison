# ELECTRONIC PRODUCT PRICE COMPARISON

This topic of discussion was decided with the importance of e-commerce rising everyday. The prices are always changing to keep up with competitors and bring in more customers. The project analyses the similarities/differences with prices between the websites, it also looks at the reviews. This is a great comparison to make for websites/companies since the only difference will be experience and price. So all reviews gives a great insight into the experience each customers gets, whether that is customer service, usability of the website, delivery speed, refund policies and their choice of price.

## EXTRACT

The data was extracted from the currys(currys.co.uk) and very(very.co.uk) website, using webscraping. The specific data extracted were the names, price, rating and rating count for the electronic products. The two sets of data were then created into two dataframes and then saved as a csv. 

## TRANSFROM

The datasets were imported and then transformed into the dataframes. The dataframes were cleaned with the removal of null values, this is because of the webscaping process being unable to find some products. This was due to very.co.uk not selling these products or the webscraping was unable to find the products. The data types of the columns were adjusted if they were found to be the incorrect type. The column names needed to be changed to a more suitable name.

## LOAD

The next process was the upload of the dataframes into a database. The most suitable database is a relational databse, therefore it was put into postgresql. The two tables of very and currys, are then joined to created a price comparison table where the column that they are joined on is the Product Name column.

## ANALYSIS

There was quite a significant price difference between Currys and Very, Currys on average has 12% cheaper price. Showing that the larger and more established stores are able to offer lower prices. The ratings for both businesses were very similar with Currys having a 1% higher ratings, which is inignificant in reality as it so small and very similar. It was also filtered so that reviews were more than 50 to show a better overview of the reviews, the ratings difference did decrease but also Currys did end up haveing worse reviews.
