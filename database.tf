terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.1.0"
    }
  }
}

provider "google" {
    credentials = file("key.json")
    project =  "${var.project}"
    region = "${var.region}"
    zone = "${var.zone}"
}
resource "google_sql_database_instance" "databasename" {
  name = "${var.nome_instancia}"
  database_version = "${var.database_version}"
  region = "${var.region}"
  
  settings {
   tier = "${var.configuracao_maquina}"
    availability_type = "${var.disponibilidade}"

    ip_configuration {
      ipv4_enabled = true

      authorized_networks {
        name = "all"
        value = "0.0.0.0/0"
      }
    }
  }
}

# resource "google_compute_network" "main" {
#   name = "main"
#   auto_create_subnetworks = false
# }


resource "google_sql_user" "users" {
  name = "${var.usuario}"
  instance = "${var.nome_instancia}"
  password = "root"
}

