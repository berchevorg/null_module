variable "dummy" {
  default = "georgi"
}

resource "null_resource" "echo_dummy" {
  provisioner local-exec {

    # The Variable interpolation here should be "dummy" not "different_than_dummy"
    #command = "echo Variable is ${var.different_than_dummy}"
    command = "echo Variable is ${var.dummy}"
  }
}

resource "null_resource" "echo_dummyy" {
  provisioner local-exec {

    # The Variable interpolation here should be "dummy" not "different_than_dummy"
    #command = "echo Variable is ${var.different_than_dummy}"
    command = "echo Variable is ${var.dummy}"
  }
}
