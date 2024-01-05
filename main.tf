resource "google_compute_instance_from_machine_image" "video_server_image" {
  provider = google-beta
  name     = var.machine_name
  zone     = var.zone

  source_machine_image = "projects/${var.project}/global/machineImages/videoserver"
}
