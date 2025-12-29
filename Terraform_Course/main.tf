# Create EC2 instance

/*
Requires:{
    access_key: "YOUR_AWS_ACCESS_KEY",
    secret_key: "YOUR_AWS_SECRET_KEY",
}
*/

resource "aws_instance" "web" {
  ami           = var.os # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = var.size

  tags = {
    Name = var.name
  }
}

resource "github_repository" "example" {
  name        = var.github_repo_name
  description = var.github_repo_description
  visibility  = var.github_repo_visibility
}


#AWS S3 Bucket Creation
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucketname
}

#AWS IAM User Creation
resource "aws_iam_user" "myuser" {
  name = "${var.username}-user"
}
