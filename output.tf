output "role_arn" {
  value = aws_iam_role.github_service_oidc_assumable_role.arn
  description = "The ARN of the role that a services GitHub Action will assume to access AWS resources."
}
