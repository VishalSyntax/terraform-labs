module "iam" {
  source = "../../../../modules/iam"

  role_name       = var.role_name
  policy_name     = var.policy_name
  environment     = var.environment
  trusted_service = var.trusted_service
  policy_actions  = var.policy_actions
}
