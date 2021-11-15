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
    project =   "stop-start-vm"
    region = "us-central1"
    zone = "us-central1-c"
}

resource "google_sql_database_instance" "terraformpostges" {
  name = "terraformpostges"
  database_version = "POSTGRES_11"
  region = "us-central1"

  settings {
   tier = "db-f1-micro"
  
   }
   
 
 }




resource "google_sql_user" "users" {
    name = "pablo"
    instance = "${google_sql_database_instance.terraformpostges.name}"
    password = ""
  
}

