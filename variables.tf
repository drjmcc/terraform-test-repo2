variable "organization" {
  description = "The name of the organization that owns the service"
  type        = string
  default     = "insider"
}

variable "service_name" {
  description = "The name of the service that requires access to AWS resources"
  type        = string
  default     = ""
  validation {
    condition = var.service_name != ""
    error_message = "The service_name is required."
  }
}

variable "team" {
  description = "The team that owns the service"
  type        = string
  default     = ""
  validation {
    condition = var.team != ""
    error_message = "The team is required."
  }
}

variable "ecr_push_repo_arns" {
  description = "List of ARNs of the ECR repo that can be pushed to"
  type        = list(string)
  default     = []
}

variable "ecr_pull_repo_arns" {
  description = "List of ARNs of the ECR repo that can be pulled from"
  type        = list(string)
  default     = []
}

variable "github_repo_values" {
  description = "Values for github repos/branches that can access AWS resources e.g. repo:businessinsider/reponame:branch"
  type        = list(string)
  default     = []
  validation {
    condition = length(var.github_repo_values) > 0
    error_message = "The github_repo_values is required."
  }
}
