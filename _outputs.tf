output "iam_role_admin_arn" {
  value       = aws_iam_role.admin.arn
  description = "AdministratorAccess IAM role ARN"
}

output "iam_role_billing_arn" {
  value       = aws_iam_role.billing.arn
  description = "BillingAccess IAM role ARN"
}

output "iam_role_data_scientist_arn" {
  value       = try(aws_iam_role.data_scientist[0].arn, "")
  description = "DataScientist IAM role ARN"
}

output "iam_role_database_admin_arn" {
  value       = try(aws_iam_role.database_admin[0].arn, "")
  description = "DatabaseAdministrator IAM role ARN"
}

output "iam_role_network_admin_arn" {
  value       = try(aws_iam_role.network_admin[0].arn, "")
  description = "NetworkAdministrator IAM role ARN"
}

output "iam_role_power_user_arn" {
  value       = try(aws_iam_role.power_user[0].arn, "")
  description = "PowerUserAccess IAM role ARN"
}

output "iam_role_security_audit_arn" {
  value       = try(aws_iam_role.security_audit[0].arn, "")
  description = "SecurityAudit IAM role ARN"
}

output "iam_role_support_user_arn" {
  value       = try(aws_iam_role.support_user[0].arn, "")
  description = "SupportUser IAM role ARN"
}

output "iam_role_system_admin_arn" {
  value       = try(aws_iam_role.system_admin[0].arn, "")
  description = "SystemAdministrator IAM role ARN"
}

output "iam_role_view_only_arn" {
  value       = aws_iam_role.view_only.arn
  description = "ViewOnlyAccess IAM role ARN"
}

output "iam_role_extra_arns" {
  value = aws_iam_role.extra.*.arn
}
