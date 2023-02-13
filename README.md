# Top Artists, Top Songs, and Vocabulary

![DDOS](src/state%20of%20affairs.png 'DDOS')
## Introduction

The aim of this project was to study the differences in songwriting in across genres and time. Towards that goal, we scraped Wikipedia.org for a list of the top 100 most successful bands, LastFM.com for a breakdown of their top 10 songs and Genius.com to search for their lyrics. We also included an alternative CSV dataset from Kaggle.com containing the lyrics of over 147,000 songs on AZLyrics.com.

Next we found out the total unique words used across each artist's top 10 songs, their average, and with more time, we could have found a breakdown of each songs frequencies and amplitudes. We analysed some of the patterns, and as it turns out, there is very little correlation - artists are not particularly writing more or less complex songs on average.

Finally, we migrated the database to SQL, consisting of our 2 main tables, genres and artists.

The /src/ reading order is as follows:

1) Top100list.ipnyb

2) Artists_Scrape.ipynb

3) Lyrics_Scrape.ipynb

4) Data_enrichment.ipynb

5) Kaggle_csv_data.ipynb

6) Migrate_to_SQL.ipynb

7) Can ignore the rest as they are work-in-progress

## Extraction

We mostly used Selenium to scrape through the aforementioned websites, using in particular Joblib to parallelize the process.
We imported CSV data from Kaggle to give ourselves something to compare to.

## Transformation

The data was transformed in several ways. We used .parquet and .json file extensions to temporarily store the data on the hard drive. Wherever it made sense, we appended to the 'Artists' table data such as their overall band rank among the top 100 and their unique/average unique words in their lyrics from AZLyrics.com and Genius.com.

## Loading

Since most of the end result was concatenated to our main 'Artist' table, we ended up with a relatively simple SQL Schema for our data, consisting of just the artists with all their information, and the 'genre' data, linked together by a many-to-many exchange table.

![A/G Schema](src/SQL%20schema%20picture.png 'A/G Schema')