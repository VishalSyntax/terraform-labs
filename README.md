# terraform-labs

i'm learning terraform with my mentor, practicing day by day. each folder is one day of work, pushed to git daily.

[![Mentor Repo](https://img.shields.io/badge/Mentor's%20Repo-gauravhalnawar1011-orange?style=for-the-badge&logo=github)](https://github.com/gauravhalnawar1011/IAC-terraform)  [![Institute Repo](https://img.shields.io/badge/Institute%20Repo-fortunecloudtraining-blue?style=for-the-badge&logo=github)](https://github.com/fortunecloudtraining/aws_with_terraform_april_batch)

---

## what i've done so far

| Day | what i learned | files |
|-----|---------------|-------|
| [Day-1](./Day-1/) | set up aws provider, launched my first ec2 instance | `main.tf` |
| [Day-2](./Day-2/) | used variables and outputs, made the config reusable | `variables.tf`, `outputs.tf` |
| [Day-3](./Day-3/) | stored terraform state remotely in s3 | `backend.tf` |

---

## folder structure

every day i create a new folder like this:

```
Day-N/
├── main.tf
├── variables.tf     # if needed
├── outputs.tf       # if needed
├── provider.tf      # if needed
└── backend.tf       # if needed
```

---

## notes i keep coming back to

**core concepts**
- provider – connects terraform to aws (or any cloud)
- resource – the actual thing you're creating (ec2, s3, etc.)
- variable – makes your config reusable instead of hardcoding values
- output – prints useful info after apply (like ip address)
- state – terraform tracks what it created in a `.tfstate` file
- module – reusable group of resources

**commands i use daily**
```bash
terraform init      # first thing, sets up the project
terraform plan      # check what will change before applying
terraform apply     # actually create/update infra
terraform destroy   # tear everything down
terraform fmt       # auto-format the code
terraform validate  # check for syntax errors
```

**provider setup**
```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
```

**variables**
```hcl
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
```

**outputs**
```hcl
output "instance_ip" {
  value = aws_instance.example.public_ip
}
```

**remote state (s3 backend)**
```hcl
terraform {
  backend "s3" {
    bucket = "my-terraform-remote-back"
    key    = "day3/terraform.tfstate"
    region = "ap-south-1"
  }
}
```

---

## things to remember

- always run `terraform plan` before `terraform apply`
- never hardcode secrets, use environment variables
- store state in s3 so it doesn't get lost
- tag resources so you know what's what in aws console

---

## useful links

- [terraform docs](https://developer.hashicorp.com/terraform/docs)
- [aws provider docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
