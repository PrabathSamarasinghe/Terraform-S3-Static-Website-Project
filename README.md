# Terraform S3 Static Website Project

This Terraform project creates a static website hosted on AWS S3 with public access.

## Overview

The project provisions:
- An S3 bucket with a configurable name
- Public access configuration for web hosting
- Two HTML files (index.html and error.html)
- Website configuration with custom error page

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed (v1.0+)
- AWS CLI configured with valid credentials
- An AWS account with appropriate permissions to create S3 buckets

## Project Structure

```
.
├── main.tf          # Main infrastructure resources
├── provider.tf      # AWS provider configuration
├── variables.tf     # Input variables
├── outputs.tf       # Output values
├── index.html       # Homepage content
└── error.html       # Error page content
```

## Configuration

### Variables

- `bucketname`: The name of the S3 bucket (default: `my-tf-project-bucket-2025-12-29`)

You can customize the bucket name in `variables.tf` or override it during deployment.

## Usage

1. **Initialize Terraform:**
   ```bash
   terraform init
   ```

2. **Review the execution plan:**
   ```bash
   terraform plan
   ```

3. **Apply the configuration:**
   ```bash
   terraform apply
   ```

4. **Access your website:**
   After successful deployment, the website endpoint will be displayed in the outputs.

5. **Destroy resources when done:**
   ```bash
   terraform destroy
   ```

## Resources Created

- `aws_s3_bucket` - The main S3 bucket
- `aws_s3_bucket_ownership_controls` - Bucket ownership settings
- `aws_s3_bucket_public_access_block` - Public access block configuration
- `aws_s3_bucket_acl` - Bucket ACL set to public-read
- `aws_s3_object` - index.html and error.html uploads
- `aws_s3_bucket_website_configuration` - Website hosting configuration

## Outputs

- `websiteendpoint` - The URL endpoint for the hosted website

## Notes

- This configuration creates a **publicly accessible** S3 bucket
- The bucket ACL is set to `public-read` for static website hosting
- The region is set to `us-east-1` by default (can be modified in provider.tf)

## Security Warning

⚠️ This configuration is intended for learning purposes. The bucket is publicly accessible. Do not use this configuration for sensitive data or production environments without implementing proper security measures.
