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
| 10 | ec2-start-stop | lambda + eventbridge ec2 scheduler | [👁️](./modules/ec2-start-stop/) |
| 11 | vpc-peering | cross-region requester/accepter peering module | [👁️](./modules/vpc-peering/) |
| 12 | aws-vpc-s3-endpoints | vpc with s3 gateway endpoints | [👁️](./modules/aws-vpc-s3-endpoints/) |

---

## environments

| # | project | what it deploys | environments | view | arch |
|---|---------|-----------------|--------------|------|------|
| 1 | Compute/EC2 | ec2 instances using compute module | dev | [👁️](./environments/Compute/) | [🏗️](./modules/Compute/arch.png) |
| 2 | network/vpc | full vpc networking stack | dev | [👁️](./environments/network/) | [🏗️](./modules/network/arch.png) |
| 3 | Networking/VPC | alternate vpc setup | dev | [👁️](./environments/Networking/) | [🏗️](./modules/Networking/arch.png) |
| 4 | Storage/S3 | s3 buckets | dev, qa, uat, prod | [👁️](./environments/Storage/) | [🏗️](./modules/Storage/arch.png) |
| 5 | database/sql/postgracesql | rds postgresql | dev, qa, uat, prod | [👁️](./environments/database/sql/postgracesql/) | [🏗️](./modules/database/arch.png) |
| 6 | database/nosql/dynmodn | dynamodb table | dev, qa, uat, prod | [👁️](./environments/database/nosql/dynmodn/) | [🏗️](./modules/database/arch.png) |
| 7 | iam | iam users, roles, policies | dev, qa, uat, prod | [👁️](./environments/iam/) | [🏗️](./modules/iam/arch.png) |
| 8 | security | security group configurations | dev, qa, uat, prod | [👁️](./environments/security/) | [🏗️](./modules/security/arch.png) |
| 9 | DNS | route53 hosted zones and records | dev, qa, uat, prod | [👁️](./environments/DNS/) | [🏗️](./modules/DNS/arch.png) |
| 10 | ec2-start-stop | ec2 lifecycle management | dev, qa, uat, prod | [👁️](./environments/ec2-start-stop/) | [🏗️](./modules/aws-alb-asg-lt/arch.png) |
| 11 | vpc-Peering | vpc peering between two vpcs | dev, qa, uat, prod | [👁️](./environments/vpc-Peering/) | [🏗️](./modules/network/arch.png) |
| 12 | aws-vpc-endpoints-demo | vpc endpoints (gateway/interface) | dev, qa, uat, prod | [👁️](./environments/aws-vpc-endpoints-demo/) | [🏗️](./modules/aws-vpc-s3-endpoints/arch.png) |

---

## daily sessions

### branch progress

| day/branch | what i learned | project |
|------------|----------------|---------|
| day-1 | aws provider, first ec2 with hardcoded values | [Compute/EC2](./environments/Compute/) |
| day-2 | variables, outputs, s3 remote backend, split files | [network/vpc](./environments/network/) |
| day-3 | alternate vpc/networking setup | [Networking/VPC](./environments/Networking/) |
| day-4 | s3 buckets, multi-env (dev/qa/uat/prod) | [Storage/S3](./environments/Storage/) |
| day-5 | rds postgresql, db subnet groups, parameter groups | [database/sql](./environments/database/sql/postgracesql/) |
| day-6 | dynamodb table, billing modes, gsi | [database/nosql](./environments/database/nosql/dynmodn/) |
| day-7 | database module pushed (sql + nosql) | [database module](./modules/database/) |
| day-8 | iam roles, policies, role-policy attachment | [iam](./environments/iam/) |
| day-9 | security groups (ssh/http/https/icmp), reusable sg module | [security](./environments/security/) |
| day-10 | route53 hosted zone, dns records (A/CNAME), multi-env | [DNS](./environments/DNS/) |
| day-11 | ec2 start/stop automation with lambda + eventbridge schedules | [ec2-start-stop](./environments/ec2-start-stop/) |
| day-12 | cross-region vpc peering between primary & secondary vpcs | [vpc-Peering](./environments/vpc-Peering/) |

### foundational labs

| day | what i learned | view |
|-----|----------------|------|
| Day-1 | aws provider setup, first ec2 with hardcoded values | [👁️](./Day-1/) |
| Day-2 | variables, outputs, s3 remote backend, split files | [👁️](./Day-2/) |
| Day-3 | security groups (ssh/http/https/icmp), ec2 + nginx via user_data | [👁️](./Day-3/) |
| Day-4 | provisioners — file, local-exec, remote-exec over ssh | [👁️](./Day-4/) |
