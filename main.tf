variable "env" {
}

resource "local_file" "foo" {
  content  = "Current Environment: ${var.env}."
  filename = "env"
}

resource "null_resource" "example" {
   provisioner "local-exec" {
     command = "hostname ; whoami ; date ; sleep 100 ; echo done"
   }
}
