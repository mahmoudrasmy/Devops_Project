provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "example" {
  ami           = "ami-66506c1c"
  instance_type = "t2.large"
  key_name      = "jenkins_aws"

  provisioner "file" {
    source      = "bootstrap.sh"
    destination = "/tmp/bootstrap.sh"

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("./jenkins_aws.pem")}"
      agent       = false
      timeout     = "2m"
    }
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("./jenkins_aws.pem")}"
      agent       = false
      timeout     = "2m"
    }

    inline = [
      "chmod +x /tmp/bootstrap.sh",
      "cd /tmp/",
      "/tmp/bootstrap.sh",
    ]
  }
}