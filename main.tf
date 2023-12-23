resource "google_compute_instance" "test-machine" {
  name         = var.machine_name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["http-server","allow-http-ssh"]


  metadata = {
    ssh-keys = "${var.google_username}:${var.google_publickey}"
  }

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

  provisioner "remote-exec" {
  
    connection {
      type        = "ssh"
      user        = var.google_username
      host        = google_compute_instance.test-machine.network_interface[0].access_config[0].nat_ip
      private_key = var.google_privatekey
      timeout = "2m"
      agent = false
    }

    inline = [
      "git clone https://github.com/veraborvinski/NginxVideo.git",
      "cd NginxVideo",
      "sh ./Build"
    ]
  }
/*
  provisioner "local-exec" {
    command = "chrome ${google_compute_instance.test-machine.network_interface[0].access_config[0].nat_ip}"
  }
*/
}

