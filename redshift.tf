terraform {
  required_version = ">= 0.13"
}

resource "aws_redshift_cluster" "data_warehouse" {
  cluster_identifier = "capstone-project"
  database_name      = "mydb"
  master_username    = "eugene"
  master_password    = "Password1709"
  node_type          = "dc2.large"
  cluster_type       = "single-node"

  skip_final_snapshot = true
CREATE TABLE btcusdt_data (
          date DATE,
          "open" NUMERIC(20,10),
          high NUMERIC(20,10),
          low NUMERIC(20,10),
          close NUMERIC(20,10),
          volume NUMERIC(20,10),
          quote_volume NUMERIC(20,10),
          number_of_trades INTEGER,
          taker_buy_volume NUMERIC(20,10),
          taker_buy_quote_volume NUMERIC(20,10),
  		  price_diff varchar,
          price_change_percentage varchar
        );
        
        CREATE TABLE ethusdt_data (
          date DATE,
          "open" NUMERIC(20,10),
          high NUMERIC(20,10),
          low NUMERIC(20,10),
          close NUMERIC(20,10),
          volume NUMERIC(20,10),
          quote_volume NUMERIC(20,10),
          number_of_trades INTEGER,
          taker_buy_volume NUMERIC(20,10),
          taker_buy_quote_volume NUMERIC(20,10),
          price_diff varchar,
          price_change_percentage varchar
        );
}

COPY btcusdt_data
FROM 's3://capstone-montybucket/btcusdt_data.csv'
IAM_ROLE 'arn:aws:iam::211125724808:role/Redshiftrole1'
CSV
IGNOREHEADER 1;


COPY ethusdt_data
FROM 's3://capstone-montybucket/ethusdt_data.csv'
IAM_ROLE 'arn:aws:iam::211125724808:role/Redshiftrole1'
CSV
IGNOREHEADER 1;


