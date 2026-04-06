terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.0"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
     always_run = "${timestamp()}"
  }
}

###
resource "null_resource" "example22" {
  triggers = {
      always_run = "${timestamp()}"
  }
}