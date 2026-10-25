# terraform-labs

[![LinkedIn](https://img.shields.io/badge/LinkedIn-vishal0x-0A66C2?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/vishal0x/)  [![Institute Repo](https://img.shields.io/badge/Institute%20Repo-fortunecloudtraining-blue?style=for-the-badge&logo=github)](https://github.com/fortunecloudtraining/aws_with_terraform_july_batch)

> learning terraform with my mentor — all projects listed below. click 👁️ to open the folder.

---

## modules

| # | module | what it does | view |
|---|--------|--------------|------|
| 1 | Compute | reusable ec2 module | [👁️](./modules/Compute/) |
| 2 | network | vpc, subnets, igw, nat, route tables, sg, endpoints | [👁️](./modules/network/) |
| 3 | Networking | alternate vpc/networking module | [👁️](./modules/Networking/) |
| 4 | Storage | s3 bucket module | [👁️](./modules/Storage/) |
| 5 | aws-alb-asg-lt | alb + auto scaling group + launch template | [👁️](./modules/aws-alb-asg-lt/) |
| 6 | database | rds (postgresql) + dynamodb module | [👁️](./modules/database/) |
| 7 | iam | iam roles, policies module | [👁️](./modules/iam/) |
| 8 | security | security groups module | [👁️](./modules/security/) |
| 9 | DNS | route53 dns module | [👁️](./modules/DNS/) |
| 10 | aws-vpc-s3-endpoints | vpc with s3 gateway endpoints | [👁️](./modules/aws-vpc-s3-endpoints/) |

---

## environments

| # | project | what it deploys | environments | view |
|---|---------|-----------------|--------------|------|
| 1 | Compute/EC2 | ec2 instances using compute module | dev | [👁️](./environments/Compute/) |
| 2 | network/vpc | full vpc networking stack | dev | [👁️](./environments/network/) |
| 3 | Networking/VPC | alternate vpc setup | dev | [👁️](./environments/Networking/) |
| 4 | Storage/S3 | s3 buckets | dev, qa, uat, prod | [👁️](./environments/Storage/) |
| 5 | database/sql/postgracesql | rds postgresql | dev, qa, uat, prod | [👁️](./environments/database/sql/postgracesql/) |
| 6 | database/nosql/dynmodn | dynamodb table | dev, qa, uat, prod | [👁️](./environments/database/nosql/dynmodn/) |
| 7 | iam | iam users, roles, policies | dev, qa, uat, prod | [👁️](./environments/iam/) |
| 8 | security | security group configurations | dev, qa, uat, prod | [👁️](./environments/security/) |
| 9 | DNS | route53 hosted zones and records | dev, qa, uat, prod | [👁️](./environments/DNS/) |
| 10 | ec2-start-stop | ec2 lifecycle management | dev, qa, uat, prod | [👁️](./environments/ec2-start-stop/) |
| 11 | vpc-Peering | vpc peering between two vpcs | dev, qa, uat, prod | [👁️](./environments/vpc-Peering/) |
| 12 | aws-vpc-endpoints-demo | vpc endpoints (gateway/interface) | dev, qa, uat, prod | [👁️](./environments/aws-vpc-endpoints-demo/) |

---

## daily sessions

| day | what i learned | view |
|-----|----------------|------|
| Day-1 | aws provider setup, first ec2 with hardcoded values | [👁️](./Day-1/) |
| Day-2 | variables, outputs, s3 remote backend, split files | [👁️](./Day-2/) |
| Day-3 | security groups (ssh/http/https/icmp), ec2 + nginx via user_data | [👁️](./Day-3/) |
| Day-4 | provisioners — file, local-exec, remote-exec over ssh | [👁️](./Day-4/) |
