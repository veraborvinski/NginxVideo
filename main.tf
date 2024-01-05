resource "google_compute_instance" "test-machine" {
  name         = var.machine_name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["http-server","allow-http-ssh"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }

  metadata = {
    user-data = file("./setup.sh")
  }
}
