provider "google" {
    credentials = file("key.json")
    project =   "stop-start-vm"
    region = "us-central1"
    zone = "us-central1-c"
}

resource "google_compute_instance" "terraform-server" {
  name = "terraform-server"
  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
        image = "debian-cloud/debian-10"
    }
  }
 
  network_interface {
    network = "default"
    access_config{}
  }
}