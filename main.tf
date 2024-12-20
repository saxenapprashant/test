terraform {
  required_providers {
    linux = {
      source = "TelkomIndonesia/linux"
      version = "0.7.0"
    }
  }
}

provider "linux" {
    host     = "192.168.99.129"
    port     = 22
    user     = "ubuntu"
    password = "root123"
}

resource "linux_file" "unnatifile" {
    path = "/tmp/testdir"
}