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
}



