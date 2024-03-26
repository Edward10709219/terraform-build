resource "google_compute_instance" "default" {
  name         = "edward-instance-data-source-100"
  machine_type = "n2-standard-2"
  zone         = "asia-east1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }



  network_interface {
    network = data.google_compute_network.data-network.id
    subnetwork = data.google_compute_subnetwork.my-subnetwork.id
    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}