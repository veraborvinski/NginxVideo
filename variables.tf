variable "machine_name" {
  type        = string
  description = "The machine name"
  default     = "video"
}

variable "project" {
  type        = string
  description = "The project ID to deploy to"
  default     = "kinetic-dryad-405523"
}

variable "region" {
  type        = string
  description = "The region to deploy to"
  default     = "eu-central2"

}

variable "zone" {
  type        = string
  description = "The zone to deploy to"
  default     = "eu-central2-c"
}

variable "machine_type" {
  type        = string
  description = "The machine type to deploy to"
  default     = "e2-medium"
}

variable "image" {
  type        = string
  description = "The image to deploy to"
  default     = "cos-cloud/cos-73-11647-217-0"
}
