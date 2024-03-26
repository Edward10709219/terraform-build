data "google_compute_network" "data-network" {
  name = "edward-vpc"
}

data "google_compute_subnetwork" "my-subnetwork" {
  name   = "edward-ae-subnet-2"
  region = "asia-east1"
}

output "my_network_name" {
  value = data.google_compute_network.data-network.name
}


output "my_subnetwork_name" {
  value = data.google_compute_subnetwork.my-subnetwork.name
}