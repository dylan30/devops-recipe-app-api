variable "tf_state_bucket" {
  description = "name of s3 bucket in aws for storing tf state"
  default     = "devops2-recipe-app-tf-state"
}

variable "tf_state_lock_table" {
  description = "name of dynamoDB table for tf state locking"
  default     = "devops2-recipe-app-tf-lock"
}

variable "project" {
  description = "project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "contact name for tagging resources"
  default     = "dylan_dai@hotmail.com"
}