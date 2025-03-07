data "aws_db_subnet_group" "database" {
  name = "default-vpc-381c8153"
}

data "aws_db_snapshot" "snapshot" {
  db_instance_identifier = "koreanair-database-1"
  most_recent            = true
}

# Use the latest production snapshot to create a dev instance.
resource "aws_db_instance" "this" {
  identifier = "${var.prefix}-rds"
  snapshot_identifier = data.aws_db_snapshot.snapshot.id
  instance_class      = var.db_instance_type
  db_subnet_group_name = data.aws_db_subnet_group.database.name
  vpc_security_group_ids = [ aws_security_group.this.id ]
  publicly_accessible = true
  skip_final_snapshot = true
}

# data "tfe_workspace" "test-workspace" {
#   name         = "kal-vault-rds-test"
#   organization = "tf-cn"
# }

# data "tfe_workspace" "test-sourceable" {
#   name         = "kal-rds-test"
#   organization = "tf-cn"
# }

# resource "tfe_run_trigger" "test" {
#   workspace_id  = data.tfe_workspace.test-workspace.id
#   sourceable_id = data.tfe_workspace.test-sourceable.id
# }