# AWS Certified Solutions Architect - Associate (SAA-C03)
> Sources: AWS Documentation (Exam Guide), 2026-04-09; AWS Documentation (Content Domain 1), 2026-04-09; AWS Documentation (Content Domain 2), 2026-04-09; AWS Documentation (Content Domain 3), 2026-04-09; AWS Documentation (Content Domain 4), 2026-04-09; AWS Documentation (Technologies and Concepts), 2026-04-09; AWS Documentation (Service Mentions), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09; AWS Documentation (Out-of-Scope Services), 2026-04-09
> Raw: [Exam Guide](../../raw/aws-certification/2026-04-09-saa-c03-exam-guide.md); [Domain 1](../../raw/aws-certification/2026-04-09-saa-c03-domain-1-secure-architectures.md); [Domain 2](../../raw/aws-certification/2026-04-09-saa-c03-domain-2-resilient-architectures.md); [Domain 3](../../raw/aws-certification/2026-04-09-saa-c03-domain-3-high-performing-architectures.md); [Domain 4](../../raw/aws-certification/2026-04-09-saa-c03-domain-4-cost-optimized-architectures.md); [Technologies and Concepts](../../raw/aws-certification/2026-04-09-saa-c03-technologies-and-concepts.md); [Service Mentions](../../raw/aws-certification/2026-04-09-saa-c03-service-mentions.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md); [Out-of-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-out-of-scope-services.md)
> Updated: 2026-04-11

## Overview

The SAA-C03 guide defines the associate solutions architect exam as an AWS Well-Architected-centered design exam. It tests whether a candidate can design secure, resilient, high-performing, and cost-optimized solutions, choose appropriate AWS services, and improve existing architectures. Those four scored domains map closely to core Well-Architected concerns, even though the broader AWS Well-Architected Framework now spans six pillars by also including operational excellence and sustainability. AWS frames the exam around four weighted domains, with explicit task statements and supporting references for concepts, service naming, and which AWS services are in or out of scope.

## Exam Format And Expectations

The exam is aimed at people performing a solutions architect role and recommends at least 1 year of hands-on experience designing AWS-based cloud solutions. AWS describes the scored exam as 50 questions, plus 15 unscored questions used for future calibration.

Question formats are:

- Multiple choice, with one correct answer and three distractors
- Multiple response, with two or more correct answers among five or more options

AWS states that there is no guessing penalty. Results are reported on a scaled 100-1,000 scale, and the minimum passing score is 720. Section-level feedback is diagnostic only because the overall exam uses a compensatory scoring model.

## Domain Weighting

- Domain 1: Design Secure Architectures, 30%
- Domain 2: Design Resilient Architectures, 26%
- Domain 3: Design High-Performing Architectures, 24%
- Domain 4: Design Cost-Optimized Architectures, 20%

This weighting implies that security and resilience together make up more than half of the scored content, but the blueprint still expects broad coverage across storage, compute, networking, databases, migration, governance, and cost controls.

## Domain Themes

### Domain 1: Secure Architectures

Domain 1 emphasizes identity, access, network protection, and data security controls. The guide repeatedly points toward least privilege, multi-account governance, federation, resource policies, VPC security design, secure connectivity, encryption, backups, retention, and compliance-aligned controls.

High-yield services and concepts include IAM, AWS IAM Identity Center, AWS STS, AWS Control Tower, SCPs, VPC security components, AWS Shield, AWS WAF, AWS Secrets Manager, AWS KMS, and ACM.

### Domain 2: Resilient Architectures

Domain 2 focuses on loose coupling, scale, and fault tolerance. AWS highlights event-driven and microservice patterns, queues and messaging, serverless and containers, read replicas, workflow orchestration, multi-tier design, multi-AZ or multi-Region availability, disaster recovery strategies, immutable infrastructure, and workload visibility.

High-yield services and concepts include Amazon API Gateway, Amazon SQS, AWS Step Functions, AWS Lambda, AWS Fargate, Amazon ECS, Amazon EKS, Amazon Route 53, Amazon RDS Proxy, AWS X-Ray, and DR patterns such as backup and restore, pilot light, warm standby, and active-active failover.

### Domain 3: High-Performing Architectures

Domain 3 is about matching performance characteristics to the right storage, compute, database, network, and data-processing designs. AWS explicitly calls out storage type selection, elastic compute sizing and scaling, read-heavy versus write-heavy data patterns, caching, database engine selection, edge networking, connectivity options, and ingestion or transformation pipelines.

High-yield services and concepts include Amazon S3, Amazon EBS, Amazon EFS, AWS Batch, Amazon EMR, Amazon EC2 Auto Scaling, Amazon ElastiCache, Amazon Aurora, Amazon DynamoDB, Amazon CloudFront, AWS Global Accelerator, AWS Direct Connect, AWS PrivateLink, Amazon Athena, AWS Lake Formation, AWS Glue, AWS DataSync, AWS Storage Gateway, and Amazon Kinesis.

### Domain 4: Cost-Optimized Architectures

Domain 4 centers on choosing the cheapest acceptable architecture rather than the absolute cheapest service in isolation. AWS emphasizes lifecycle policies, storage tiering, backup and archival tradeoffs, purchase options such as Spot, Reserved Instances, and Savings Plans, instance-family selection, serverless and container efficiency, retention policies, database right-sizing, and network transfer cost minimization.

High-yield services and concepts include AWS Budgets, AWS Cost Explorer, AWS Cost and Usage Report, Savings Plans, S3 lifecycle management, EC2 purchasing models, NAT gateway tradeoffs, Transit Gateway and routing choices, and cost-aware database engine or storage selections.

## Cross-Cutting Study Areas

AWS's supporting concept list shows the exam spans:

- Compute
- Cost management
- Database
- Disaster recovery
- High performance
- Management and governance
- Microservices and component delivery
- Migration and data transfer
- Networking, connectivity, and content delivery
- Resiliency
- Security
- Serverless and event-driven design principles
- Storage

Taken together, the blueprint favors architecture decisions and tradeoffs over service memorization alone. A useful study lens is to ask, for each requirement set, which AWS design best balances security, resilience, performance, and cost.

## Service Scope

AWS publishes both in-scope and out-of-scope service lists for this exam. The in-scope list is broad and includes core architect services across compute, storage, networking, security, databases, analytics, integration, governance, migration, and serverless. This wiki's [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md) turns that list into short architecture cues for faster review.

Representative in-scope services include:

- Compute and containers: Amazon EC2, Auto Scaling, AWS Batch, Amazon ECS, Amazon EKS, AWS Fargate
- Storage: Amazon S3, S3 Glacier, Amazon EBS, Amazon EFS, Amazon FSx, AWS Backup, AWS Storage Gateway
- Application integration: Amazon AppFlow, AWS AppSync, Amazon EventBridge, Amazon MQ, Amazon SNS, Amazon SQS, AWS Step Functions
- Networking: Amazon VPC, Elastic Load Balancing, Amazon CloudFront, Route 53, AWS Direct Connect, AWS Transit Gateway, AWS Global Accelerator
- Security: IAM, AWS IAM Identity Center, AWS KMS, AWS Secrets Manager, AWS WAF, AWS Shield, Amazon GuardDuty, Amazon Macie
- Databases and analytics: Amazon Aurora, Amazon DynamoDB, Amazon RDS, Amazon ElastiCache, Amazon Redshift, Amazon Athena, AWS Glue, Amazon Kinesis
- Governance and observability: AWS CloudFormation, AWS CloudTrail, Amazon CloudWatch, AWS Config, AWS Control Tower, AWS Organizations, AWS Trusted Advisor, AWS Well-Architected Tool, AWS X-Ray

The out-of-scope list helps avoid wasting study time on services AWS does not expect for this role. Examples include AWS CDK and several other developer tooling services, Amazon Lightsail, all IoT services, Amazon Managed Blockchain, Amazon Braket, AWS Ground Station, and multiple specialized machine learning or media offerings.

## Naming And Test-Taking Notes

AWS notes that the exam often uses official short service names instead of full expanded names. For example, Amazon Simple Notification Service appears as Amazon SNS. The exam help feature includes short names and full names, but AWS also warns that some abbreviations are expected knowledge and may not be expanded for you.

## See Also

- [AWS Well-Architected Framework](aws-well-architected-framework.md)
- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [Application Integration Services For SAA-C03](application-integration-services-for-saa-c03.md)
- [SAA-C03 Practice Question Patterns](saa-c03-practice-question-patterns.md)
