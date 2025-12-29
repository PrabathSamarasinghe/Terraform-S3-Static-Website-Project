resource "null_resource" "file_example" {
  provisioner "local-exec" {
    command = "echo 'This is an example file.' > example.txt"
  }
}