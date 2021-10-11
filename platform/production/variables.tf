variable "rg_name" {
  type        = string
  description = "The name of the resource group for the log analytics"
}
variable "rg_location" {
  type        = string
  description = "The location of log analytics and resource group must be the same"
}
variable "name" {
  type        = string
  description = "The name for log analytics workspace"
}
variable "sku" {
  type        = string
  description = "Specifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018"
}

variable "retention_in_days" {
  type        = string
  description = "The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730"
}

variable "daily_quota_gb" {
  type        = string
  description = "The workspace daily quota for ingestion in GB."
}
