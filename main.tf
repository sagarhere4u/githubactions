variable "env" {
}

resource "local_file" "foo" {
  content  = "Current Environment is ${var.env}."
  filename = "env"
}
