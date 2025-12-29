variable "os" {
  type        = string
  default     = "Add-your-ami-id-here"
  description = "This is my ami ID"
}

variable "size" {
  default     = "t3.micro"
  description = "This is my instance size"
}

variable "name" {
  default     = "TerraformExampleInstance"
  description = "This is my instance name"
}

variable "github_repo_name" {
  default     = "terraform-example-repo"
  description = "This is my GitHub repository name"
}

variable "github_repo_description" {
  default     = "A repository created with Terraform"
  description = "This is my GitHub repository description"
}

variable "github_repo_visibility" {
  default = "public"
  description = "This is my GitHub repo visibility"
}

variable "bucketname" {
  default = "my-unique-terraform-bucket-prabath-20251229"
  description = "This is my S3 bucket name"
}

variable "username" {
  
}