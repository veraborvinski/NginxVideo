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
  default     = "europe-west2"

}

variable "zone" {
  type        = string
  description = "The zone to deploy to"
  default     = "europe-west2-c"
}

variable "machine_type" {
  type        = string
  description = "The machine type to deploy to"
  default     = "e2-medium"
}

variable "image" {
  type        = string
  description = "The image to deploy to"
  default     = "os-cloud/cos-73-11647-217-0"
}

variable "google_username" {
    type = string 
    description = "your google account email"
    sensitive = true
}

variable "google_privatekey" {
    type = string 
    description = "your gcloud private key"
    sensitive = true
}

variable "google_publickey" {
    type = string 
    description = "your gcloud public key"
    sensitive = true
}

