# Historical Cryptocurrency Market Analysis and Visualization Platform for BTC/USDT and ETH/USDT using Binance Data

## Project Overview:
This project aims to build a historical cryptocurrency market analysis and visualization platform for the BTC/USDT, ETH/USDT trading pairs using Binance Kline data. The platform will enable users to explore, analyze, and gain insights into the BTC/USDT, ETH/USDT market trends and patterns.

## Description of Kline Data
Kline data, also known as candlestick data, provides a summarized view of trading activity for a specific trading pair within a given time frame. Each data point, represented by a candlestick, includes information about the opening price, closing price, highest price, lowest price, and trading volume during that period.

## Contents of Kline Data
The Kline data includes the following fields:

* open_time: Timestamp for the start of the candlestick period.
* open: Opening price of the asset.
* high: Highest price of the asset during the period.
* low: Lowest price of the asset during the period.
* close: Closing price of the asset.
* volume: Total trading volume of the asset during the period.
* close_time: Timestamp for the end of the candlestick period.
* quote_volume: Total volume of the quote asset traded during the period.
* number_of_trades: Number of trades executed during the period.
* taker_buy_volume: the total volume of buy orders filled by takers within the period.
* taker_buy_quote_volume: the total volume of buy orders filled by takers within the period.

## Additional Project Requirements:
* AWS Account: Set up an AWS account to access and use the required AWS services, such as S3 bucket, AWS Redshift, and Amazon EC2.

* Binance API Key: Register for a Binance account and obtain an API key to access and collect the Kline data for the BTC/USDT, ETH/USDT trading pairs and other pairs.

* Programming Languages and Libraries: Use Python, SQL, and/or R for data processing, analysis, and model building. Utilize relevant libraries and frameworks, such as Pandas,boto3.

* Version Control and Collaboration: Use Git and GitHub for version control and collaboration, ensuring that all project-related code and documentation are well-organized and easily accessible.

## Purpose of Kline Data
The Kline data provides valuable insights for traders, analysts, and researchers, allowing them to:

* Analyze price movements: Identify trends, support, and resistance levels.
* Gauge market sentiment: Determine buying and selling pressure.
* Understand trading volume: Assess liquidity and market activity.
* Develop trading strategies: Use historical data to backtest and optimize trading strategies.
Example Usage
The provided functions get_klines() and save_klines_to_csv() allow users to retrieve Kline data for a specific trading pair and time frame from the Binance API and save it as a CSV file.

For instance, save_klines_to_csv("BTCUSDT", "1h") retrieves hourly Kline data for the BTCUSDT trading pair and saves it to a CSV file named "BTCUSDT_1h.csv".

By utilizing this data, users can conduct various analyses, create visualizations, and develop trading strategies based on historical price action and trading volume.

## Overview
The crypto_data_pipeline(Kline Data) streamlines the extraction, transformation, and loading of BTCUSDT and ETHUSDT data from Binance into Redshift for analysis. The pipeline comprises the following steps:

### Data Extraction

Data is extracted from Binance using the binance api.
Extracted data is loaded into local storage to house raw data.

### Data Transformation:

Transformation involves data cleaning, column removal and derivation
Transformed data is stored in S3 bucket created to house transformed data.

### Loading data into Warehouse Or Redshift:
Transformed data is then loaded into redshift

Below is a contextual diagram to visually represent the pipeline architecture and flow of data:

![Pipeline architecture for capstone project drawio](https://github.com/Kwakye463/capstone_project_eugene_kwakye_hayford/assets/69328234/e6401a2e-0789-4718-9174-dcb7f17771c4)



In this diagram:

* Binance API: Represents the source of trade data, from which data is extracted.
* Data Extraction: Denotes the process of fetching data from the Binance API.
* Data Transformation: Refers to the step where the extracted data is cleaned, processed, and transformed into a suitable format.
* Loading Data into Redshift: Represents the final step where the transformed data is loaded into Redshift for storage and analysis.
This diagram provides a visual representation of the pipeline's components and the flow of data from extraction to storage. It helps users understand the overall architecture and how each component interacts with the others.

## Components

Redshift:  Redshift is used to house the transformed data from s3 bucket for analysis and visualization.
Python: Python scripts are used for data extraction, transformation, and loading.
S3 Buckets: AWS S3 bucket is used for storing transformed data.

## Pros and Cons of the Binance Data Pipeline
### Pros:
* Scalability: The pipeline is designed to handle large volumes of data efficiently, making it suitable for scaling as your data needs grow.

* Flexibility: Users can easily customize the pipeline according to their specific requirements by adjusting configurations and modifying the main script.

* Reliability: By persisting data in S3 before loading it into databases, the pipeline ensures data integrity and provides a backup in case of failures during database loading.

* Ease of Deployment: With clear setup instructions and minimal dependencies, deploying the pipeline on different environments is straightforward.

* Comprehensive Data Handling: The pipeline fetches BTCUSDT, ETHUSDT data using Binance API, transform the data and stores it in s3 , loads the transformed data stored in the s3 into a database in redshift warehouse, covering a wide range of data storage and processing needs.

### Cons:
* Complexity: Setting up the pipeline requires configuring AWS services, managing dependencies, and understanding the flow of data between different components, which may be complex for users unfamiliar with AWS or data pipelines.

* Cost: Running the pipeline involves costs associated with AWS services such as S3 storage and redshift which can accumulate depending on the volume of data and usage patterns.

* Maintenance Overhead: Regular maintenance is required to ensure the pipeline runs smoothly, including monitoring for errors, updating dependencies, and optimizing performance.

* Limited Error Handling: While the pipeline performs basic error handling, it may not handle all possible failure scenarios, requiring additional implementation for robust error management.

* Potential Security Risks: Improperly configured AWS credentials or inadequate security measures could lead to unauthorized access or data breaches, emphasizing the importance of security best practices.

By considering these pros and cons, users can make informed decisions about whether this pipeline meets their specific data processing needs and fits within their operational constraints.

## Setup
Prerequisites
Before running the pipeline, ensure you have the following:

AWS acount with AWS S3 credentials with permissions to read from and write to S3 buckets.
redshift cluster with credentials and privileges to create pipes and tables and access to s3.
Python environment with necessary packages installed (boto3, pandas, etc.).

## Configuration
AWS Configuration:

Configure aws with your IAM access keys and secrete keys or make sure the one configured already has permissions to access s3 buckets in your account.

## Usage
Clone the Repository and install requirement:

Verify data ingestion in Redshift tables using SQL queries like

SELECT * FROM ;
Customization
Adjust the Binance API endpoint, S3 bucket name,parameters according to your setup.
Modify the main script  if you need to change the data processing logic or add additional steps to the pipeline.
Contributing
Pull requests and suggestions are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

