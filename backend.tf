terraform {
  backend "gcs" {
    bucket = "edward-tf-bucket"
    prefix = "/production"
  }
}