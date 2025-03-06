# output "db_instance_type" {
#   value = aws_db_instance.this.instance_class
# }

output "db_instance_endpoint" {
  value = aws_db_instance.this.endpoint
}

# output "db_snapshot_arn" {
#   value = data.aws_db_snapshot.snapshot.db_snapshot_arn
# }

# output "db_subnet_group_id" {
#   value = data.aws_db_subnet_group.database.subnet_ids
# }
