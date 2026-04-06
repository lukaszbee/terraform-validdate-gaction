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

data "local_file" "dane_tymczasowe" {
  for_each = var.pliki_tekstowe

  depends_on = [terraform_data.echo_tresc]
  filename   = each.value.sciezka_tymczasowa
}
