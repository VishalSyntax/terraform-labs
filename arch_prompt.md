# architecture diagram prompts

> use these prompts in chatgpt to generate architecture diagrams.
> after generating, save each image as `arch.png` inside the module folder.
> tools: chatgpt (dall-e), draw.io, excalidraw, lucidchart

---

| # | project | save diagram here |
|---|---------|-------------------|
| 1 | Compute | `modules/Compute/arch.png` |
| 2 | network | `modules/network/arch.png` |
| 3 | Networking | `modules/Networking/arch.png` |
| 4 | Storage | `modules/Storage/arch.png` |
| 5 | aws-alb-asg-lt | `modules/aws-alb-asg-lt/arch.png` |
| 6 | database | `modules/database/arch.png` |
| 7 | iam | `modules/iam/arch.png` |
| 8 | security | `modules/security/arch.png` |
| 9 | DNS | `modules/DNS/arch.png` |
| 10 | aws-vpc-s3-endpoints | `modules/aws-vpc-s3-endpoints/arch.png` |

---

## step 1 — send this FIRST before any project prompt

> open a new ChatGPT conversation, paste this once, wait for "Ready", then send project prompts one by one.

```
I am going to ask you to create 10 AWS architecture diagrams one by one for my Terraform project portfolio.

Before I start, here are the rules you must follow for ALL 10 diagrams:

STYLE:
- Use official AWS architecture icons (AWS icon set 2024)
- White background
- Clean, minimal, and professional layout
- Consistent font: Arial or Roboto, size 11-12
- Use AWS color scheme: orange (#FF9900) for AWS service labels, light blue (#E8F4FD) for VPC/subnet backgrounds

LAYOUT:
- Always show VPC as the outer boundary (light blue box) where applicable
- Public subnets in lighter shade, private subnets in slightly darker shade
- Draw arrows to show traffic/data flow direction
- Group related resources inside labeled boxes
- Add small labels under each icon showing the resource type and name
- Add a title at the top of each diagram with the project name

CONSISTENCY ACROSS ALL 10 DIAGRAMS:
- Same icon size across all diagrams
- Same arrow style — solid line with arrowhead for traffic flow, dashed line for logical connection
- Same color for same resource types (e.g. EC2 always same color, S3 always same color, RDS always same color)
- Always show a small box in the bottom-right corner labeled "Terraform State (S3 Backend)"

AVOID:
- No 3D effects or shadows
- No clipart or non-AWS icons
- Do not add services not mentioned in the prompt

Reply with "Ready" and wait for me to send the first project prompt.
```

---

## step 2 — send project prompts one by one

---

### 1. Compute
```
Project name: Compute — EC2 Module
Create an AWS architecture diagram following the style rules.
Show: EC2 instance inside a VPC public subnet, security group attached to EC2, key pair, IAM instance role, and resource tags.
```

### 2. network
```
Project name: network — Full VPC Networking Module
Create an AWS architecture diagram following the style rules.
Show: VPC with 2 public and 2 private subnets across 2 AZs, Internet Gateway, NAT Gateway in public subnet, public route table pointing to IGW, private route table pointing to NAT, security groups, and S3 VPC Gateway Endpoint.
```

### 3. Networking
```
Project name: Networking — Alternate VPC Module
Create an AWS architecture diagram following the style rules.
Show: VPC with public subnets, Internet Gateway, route tables, and security groups.
```

### 4. Storage
```
Project name: Storage — S3 Module
Create an AWS architecture diagram following the style rules.
Show: 4 S3 buckets side by side labeled dev, qa, uat, prod. Each bucket has versioning enabled, SSE-S3 encryption, bucket policy, and lifecycle rules attached.
```

### 5. aws-alb-asg-lt
```
Project name: aws-alb-asg-lt — ALB + Auto Scaling Group + Launch Template
Create an AWS architecture diagram following the style rules.
Show: Internet Gateway, Application Load Balancer in public subnet, target group, Auto Scaling Group with 2 EC2 instances in private subnets across 2 AZs, Launch Template, and CloudWatch alarm triggering scaling policy.
```

### 6. database
```
Project name: database — RDS PostgreSQL + DynamoDB
Create an AWS architecture diagram following the style rules.
Show two sections:
Section 1 (RDS): RDS PostgreSQL instance in private subnet, DB subnet group spanning 2 AZs, security group, parameter group, CloudWatch log group, KMS key for encryption. Show a second standby RDS instance in another AZ labeled "Multi-AZ (prod only)".
Section 2 (DynamoDB): DynamoDB table with partition key (GameTitle) and sort key (UserId), provisioned capacity.
```

### 7. iam
```
Project name: iam — IAM Module
Create an AWS architecture diagram following the style rules.
Show: IAM users assigned to IAM groups, IAM groups with managed policies attached, IAM roles with trust policy (EC2 and Lambda as trusted services), inline policy and managed policy attached to roles.
```

### 8. security
```
Project name: security — Security Groups Module
Create an AWS architecture diagram following the style rules.
Show: VPC with a security group, inbound rules table showing SSH (22), HTTP (80), HTTPS (443), ICMP allowed from 0.0.0.0/0, outbound rule allowing all traffic. EC2 instance inside the VPC attached to the security group.
```

### 9. DNS
```
Project name: DNS — Route53 Module
Create an AWS architecture diagram following the style rules.
Show: Route53 public hosted zone, A record pointing to an EC2 instance, CNAME record, alias record pointing to an Application Load Balancer, and Route53 health check monitoring the ALB.
```

### 10. aws-vpc-s3-endpoints
```
Project name: aws-vpc-s3-endpoints — VPC with S3 Gateway Endpoint
Create an AWS architecture diagram following the style rules.
Show: VPC with a private subnet, EC2 instance in the private subnet, S3 Gateway Endpoint attached to the private route table, S3 bucket outside the VPC. Draw a solid arrow from EC2 through the endpoint to S3 labeled "private traffic (no internet)". Show a crossed-out internet path to emphasize traffic does not go to the internet.
```
