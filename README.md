# Crowdfunding-ETL

Collaborators: Mingyao Gu and Carly Yiao

Last Update: 2023-03-23

This repository presents an Extract, Transform, and Load (ETL) pipeline for a database of 1000 sample crowdfunding projects. The source files, [crowdfunding.xlsx](Resources/crowdfunding.xlsx) and [contacts.xlsx](Resources/contacts.xlsx), can be found in the `Resources` folder. Extraction and transformation of the source files using Python and Pandas are documented in [ETL_Mini_Project_MGu_CYiao.ipynb](ETL_Mini_Project_MGu_CYiao.ipynb). The transformed data, exported as CSV files, include [category.csv](Tables/category.csv), [subcategory.csv](Tables/subcategory.csv), [contacts.csv](Tables/contacts.csv), and [campaign.csv](Tables/category.csv). They are stored in the `Tables` folder, alongside an [entity relationship diagram](Tables/ERD.png) that depicts their relationships, a [database schema](Tables/crowdfunding_db_schema.sql) that can be used to import them into a PostgreSQL database, and an [SQL file](Tables/crowdfunding_db_query.sql) that includes sample queries to display the data from each table. Note that the CSV files should be imported in the same order as those presented in the database schema to avoid errors in PostgreSQL.
