variable "env" {
}

resource "local_file" "foo" {
  content  = "Current Environment: ${var.env}."
  filename = "env"
}
