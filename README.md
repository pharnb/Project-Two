ETL Project Report

We found our data on kaggle.com. We found two data sources in CSV format which provided data about the wine industry.

File one: wine_data.csv
File two: world_pop.csv


For the wine data, we used Jupyter/Pandas to read the file into a data frame. We cleaned the data by removing unwanted columns. Next, we dropped any row with null values. We transformed the the price column from a float to a currency value and created a new price column. We compiled the final data frame by removing the old price column.
For the world population data, we dropped some columns and renamed others.  We also cleaned up some values to match the wine data or to fit as an integer.


The final data frames were uploaded to Postgres SQL.  There, we ran into an issue where "SELECT \*" caused issues as {wine_data.}country and {worldpop.}country were duplicates, so we renamed one of the columns instead of doing "SELECT wine_data.country, worldpop.country, {etc}".  We used an inner join to merge the two tables and dropped some additional columns before exporting the finished table to a .csv file.




# Project-Two
# Guidelines for ETL Project

This document contains guidelines, requirements, and suggestions for Project 1.

## Team Effort

Due to the short timeline, teamwork will be crucial to the success of this project! Work closely with your team through all phases of the project to ensure that there are no surprises at the end of the week.

Working in a group enables you to tackle more difficult problems than you'd be able to working alone. In other words, working in a group allows you to **work smart** and **dream big**. Take advantage of it!

## Project Proposal

Before you start writing any code, remember that you only have one week to complete this project. View this project as a typical assignment from work. Imagine a bunch of data came in and you and your team are tasked with migrating it to a production data base.

Take advantage of your Instructor and TA support during office hours and class project work time. They are a valuable resource and can help you stay on track.

## Finding Data

Your project must use 2 or more sources of data. We recommend the following sites to use as sources of data:

* [data.world](https://data.world/)

* [Kaggle](https://www.kaggle.com/)

You can also use APIs or data scraped from the web. However, get approval from your instructor first. Again, there is only a week to complete this!

## Data Cleanup & Analysis

Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:

* The sources of data that you will extract from.

* The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).

* The type of final production database to load the data into (relational or non-relational).

* The final tables or collections that will be used in the production database.

You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.

## Project Report

At the end of the week, your team will submit a Final Report that describes the following:

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

* **T**ransform: what data cleaning or transformation was required.

* **L**oad: the final database, tables/collections, and why this was chosen.

Please upload the report to Github and submit a link to Bootcampspot.

- - -

### Copyright

Coding Boot Camp © 2019. All Rights Reserved.
