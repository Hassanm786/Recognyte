provider "google" {
  version = "~> 3.30"
  project = "<your-project-id>"
  region  = "<your-region>"
}

resource "google_storage_bucket" "bucket" {
  name = "bucket-nexus"
}

resource "google_container_cluster" "cluster" {
  name     = "cluster-nexus"
  location = "<your-region>"
  initial_node_count = 1
  node_config {
    machine_type = "n1-standard-1"
    preemptible  = true
  }
}
