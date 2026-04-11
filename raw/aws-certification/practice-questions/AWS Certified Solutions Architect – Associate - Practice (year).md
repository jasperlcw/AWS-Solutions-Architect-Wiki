---
title: "AWS Certified Solutions Architect – Associate - Practice ([year])"
source: "https://www.iprep.online/courses/free-aws-certified-solutions-architect-associate-exam-prep/#free-practice"
author:
published: 2023-12-09
created: 2026-04-09
description: "Practice realistic AWS Certified Solutions Architect – Associate test questions with detailed answers and step-by-step video explanations. Start free and prepare with confidence."
tags:
  - "clippings"
---
Get to know what the **AWS Certified Solutions Architect Associate (SAA) Exam** will be like by practicing with these sample questions:

###### Question 1 of 20

**A company needs to ensure that its AWS cloud environment is protected from DDoS attacks. Which AWS service would be the most appropriate for this requirement?**

**Correct Answer**: D) AWS Shield

- **A**: AWS WAF is primarily used for filtering traffic to applications but does not specifically provide DDoS protection.
- **B**: Amazon GuardDuty is a threat detection service that continuously monitors for malicious activity but does not specifically provide DDoS mitigation.
- **C**: Amazon Inspector is used for security assessment and compliance of applications but does not offer DDoS protection.
- **D (Correct)**: AWS Shield provides DDoS protection and is specifically designed to safeguard AWS applications against DDoS attacks.
![AWS SAA Question 1](https://i.ytimg.com/vi/mrh4AWU0KrY/hqdefault.jpg)

Source: iPREP

###### Question 2 of 20

**A company has deployed a multi-tier web application in AWS. The application’s web servers are in an Auto Scaling group distributed across multiple Availability Zones. They need a resilient data store that can handle the loss of an Availability Zone. Which AWS services should be used together to meet these requirements? (Select TWO.)**

1. Amazon RDS with Multi-AZ deployment
2. Amazon DynamoDB with global tables
3. Amazon EC2 with Elastic Load Balancing
4. Amazon S3 with cross-region replication
5. Amazon EBS with snapshot copies to another AZ

**Correct Answers**: A) Amazon RDS with Multi-AZ deployment and B) Amazon DynamoDB with global tables

- **A (Correct)**: RDS Multi-AZ deployment ensures high availability and automatic failover capability.
- **B (Correct)**: DynamoDB with global tables offers replication across multiple regions, enhancing resilience.
- **C**: EC2 with Elastic Load Balancing distributes load but does not address data store resilience.
- **D**: S3 with cross-region replication is great for durability but not essential for database resilience in this context.
- **E**: EBS snapshots provide backup solutions but do not offer real-time failover capability.
![AWS SAA Question 2](https://i.ytimg.com/vi/Bz4IaOBf-Xk/hqdefault.jpg)

Source: iPREP

###### Question 3 of 20

**An application requires a database solution that can automatically scale to meet sudden increases in demand while maintaining consistent performance. Which combination of AWS services would best meet these requirements? (Select TWO.)**

1. Amazon RDS with provisioned IOPS
2. Amazon DynamoDB with on-demand capacity
3. Amazon EC2 Auto Scaling
4. Amazon ElastiCache
5. AWS Lambda

**Correct Answers**: B) Amazon DynamoDB with on-demand capacity and D) Amazon ElastiCache

- **A**: RDS with provisioned IOPS offers predictable performance but may not auto-scale rapidly.
- **B (Correct)**: DynamoDB with on-demand capacity can automatically adjust for varying loads.
- **C**: EC2 Auto Scaling adjusts compute but not the database layer.
- **D (Correct)**: ElastiCache enhances database performance through caching, handling spikes efficiently.
- **E**: Lambda provides serverless compute, not directly related to database scalability.
![AWS SAA Question 3](https://i.ytimg.com/vi/VJFl0Qz79Ko/hqdefault.jpg)

Source: iPREP

###### Question 4 of 20

**Which of the following AWS services offers the most cost-effective solution for storing infrequently accessed data over a long period?**

1. Amazon EBS
2. Amazon S3 Standard
3. Amazon S3 Glacier
4. Amazon RDS

**Correct Answer**: C) Amazon S3 Glacier

- **A**: EBS is best for frequently accessed, block-level storage, not for long-term, infrequent access.
- **B**: S3 Standard is more cost-effective for frequently accessed data.
- **C**: S3 Glacier is designed for long-term storage with infrequent access, making it the most cost-effective.
- **D**: RDS is a database service, not optimal for long-term data storage.
![AWS SAA Question 4](https://i.ytimg.com/vi/s-ooyK-Ba4Q/hqdefault.jpg)

Source: iPREP

###### Question 5 of 20

**To ensure business continuity, a company requires an RTO (Recovery Time Objective) of 2 hours and an RPO (Recovery Point Objective) of 15 minutes for its critical application. Which AWS disaster recovery strategy best fits these requirements?**

1. Backup and restore
2. Pilot light
3. Multi-site active-active
4. Warm standby

**Correct Answer**: D) Warm standby

- **A**: Backup and restore might not meet the RTO and RPO requirements.
- **B**: Pilot light strategy offers quicker recovery than backup and restore but may not consistently meet a 2-hour RTO.
- **C**: Multi-site active-active provides the quickest recovery but may be more than required for these RTO and RPO objectives.
- **D (Correct)**: Warm standby provides a faster RTO and RPO as it maintains a scaled-down version of a fully functional environment.
![AWS SAA Question 5](https://i.ytimg.com/vi/6gymMSUuw8Y/hqdefault.jpg)

Source: iPREP

###### Question 6 of 20

**A Solutions Architect is designing a web application that experiences seasonal traffic. To optimize costs, which combination of AWS services should be used for compute resources? (Select TWO.)**

1. Amazon EC2 On-Demand Instances
2. Amazon EC2 Reserved Instances
3. AWS Lambda
4. Amazon EC2 Spot Instances
5. Amazon EC2 Dedicated Hosts

**Correct Answers**: B) Amazon EC2 Reserved Instances and D) Amazon EC2 Spot Instances

- **A**: On-Demand Instances offer flexibility but may not be the most cost-effective for predictable seasonal traffic.
- **B (Correct)**: Reserved Instances provide a significant discount for predictable usage, ideal for expected seasonal traffic.
- **C**: AWS Lambda is more suited for event-driven, unpredictable workloads.
- **D (Correct)**: Spot Instances can offer cost savings for flexible, non-critical components of the workload.
- **E**: Dedicated Hosts are typically used for specific compliance or licensing requirements, not for cost optimization.
![AWS SAA Question 6](https://i.ytimg.com/vi/0FCx_YzwRQg/hqdefault.jpg)

Source: iPREP

###### Question 7 of 20

**An organization wants to secure its AWS infrastructure by ensuring that access keys are not embedded in code or left in accessible locations. Which AWS service or feature should be used to achieve this best practice?**

1. AWS Identity and Access Management (IAM)
2. AWS Key Management Service (KMS)
3. AWS Config
4. Amazon CloudWatch

**Correct Answer**: A) AWS Identity and Access Management (IAM)

- **A (Correct)**: IAM allows for the creation of roles and temporary credentials, reducing the need to store access keys within code.
- **B**: KMS is used for managing encryption keys, not for managing access keys within code.
- **C**: AWS Config is for tracking resource configurations and changes, not specifically for access key management.
- **D**: Amazon CloudWatch is for monitoring and logging, not for managing how access keys are stored or used.
![AWS SAA Question 7](https://i.ytimg.com/vi/vB0D8KQnWbM/hqdefault.jpg)

Source: iPREP

###### Question 8 of 20

**A Solutions Architect is designing a cost-optimized architecture for a workload that has predictable, consistent performance requirements. Which EC2 purchasing option would be the most cost-effective?**

1. On-Demand Instances
2. Spot Instances
3. Reserved Instances
4. Dedicated Hosts

**Correct Answer**: C) Reserved Instances

- **A**: On-Demand Instances are flexible but more expensive for predictable workloads.
- **B**: Spot Instances are cost-effective but best for flexible, interruptible workloads.
- **C (Correct)**: Reserved Instances offer significant savings for consistent, predictable workloads.
- **D**: Dedicated Hosts are typically used for compliance requirements, not primarily for cost savings.
![AWS SAA Question 8](https://i.ytimg.com/vi/qlbBjg0AGUQ/hqdefault.jpg)

Source: iPREP

###### Question 9 of 20

**A Solutions Architect needs to design a secure communication channel for transferring sensitive data between an Amazon EC2 instance and an S3 bucket. Which combination of actions should be taken to ensure data is encrypted in transit and never leaves the AWS network? (Select TWO.)**

1. Enforce SSL/TLS for all S3 bucket requests
2. Use Amazon Macie for data classification
3. Implement server-side encryption with AWS KMS
4. Restrict S3 bucket access with IAM roles
5. Configure a VPC endpoint for S3

**Correct Answers**: A) Enforce SSL/TLS for all S3 bucket requests and E) Configure a VPC endpoint for S3

- **A (Correct)**: Requiring SSL/TLS on the S3 bucket ensures that all data in transit between the EC2 instance and S3 is encrypted.
- **B**: Amazon Macie is a data classification and discovery service; it does not provide transport-layer security.
- **C**: Server-side encryption with KMS protects data at rest, not the communication channel.
- **D**: IAM role restrictions govern who can access the bucket but do not encrypt the data in transit.
- **E (Correct)**: A VPC endpoint for S3 ensures that traffic between the EC2 instance and S3 stays within the AWS network, avoiding exposure to the public internet.
![AWS SAA Question 9](https://i.ytimg.com/vi/wbMX5lfjmz0/hqdefault.jpg)

Source: iPREP

###### Question 10 of 20

**A Solutions Architect needs to design a system that can handle sudden, unpredictable spikes in web traffic. Which AWS service combination is the BEST for this requirement?**

1. Amazon EC2 with Elastic Load Balancing
2. Amazon RDS with Read Replicas
3. Amazon S3 with AWS CloudFront
4. Auto Scaling with Elastic Load Balancing

**Correct Answer**: D) Auto Scaling with Elastic Load Balancing

- **A**: EC2 with Elastic Load Balancing can distribute traffic, but Auto Scaling is needed for dynamic scaling.
- **B**: RDS with Read Replicas improves database read performance, not web traffic handling.
- **C**: S3 with CloudFront is great for content delivery, but not specifically for unpredictable web traffic spikes.
- **D (Correct)**: Auto Scaling dynamically adjusts EC2 capacity, while Elastic Load Balancing distributes the traffic, effectively managing sudden spikes.
![AWS SAA Question 10](https://i.ytimg.com/vi/zik6Si2fwSU/hqdefault.jpg)

Source: iPREP

###### Question 11 of 20

**A Solutions Architect needs to improve the data processing speed of a large-scale analytics application. The current setup uses multiple EC2 instances accessing data stored in Amazon S3. Which service should be implemented to enhance the processing speed without significant changes to the existing infrastructure?**

1. Amazon EBS
2. AWS Lambda
3. Amazon Elasticache
4. Amazon ElastiFile System (EFS)

**Correct Answer**: C) Amazon Elasticache

- **A**: Amazon EBS is primarily for block storage and wouldn’t significantly impact data processing speed for this scenario.
- **B**: AWS Lambda is serverless compute, more suited for event-driven applications, not large-scale data processing.
- **C (Correct)**: Elasticache can significantly improve the data processing speed by caching frequently accessed data, reducing the need to fetch it repeatedly from S3.
- **D**: Amazon EFS provides file storage but does not offer the same performance enhancement for data processing as Elasticache.
![AWS SAA Question 11](https://i.ytimg.com/vi/-aBhh3Qh5C0/hqdefault.jpg)

Source: iPREP

###### Question 12 of 20

**A media company is experiencing latency issues with its video processing application hosted on EC2 instances. The application requires high network throughput. Which EC2 instance type should the Solutions Architect recommend for optimal performance?**

1. T2 instances
2. C5 instances
3. M5 instances
4. P3 instances

**Correct Answer**: D) P3 instances

- **A**: T2 instances are general-purpose and not optimized for high network throughput, making them unsuitable for the application’s needs.
- **B**: C5 instances are compute-optimized but not the best choice for applications requiring high network throughput.
- **C**: M5 instances are also general-purpose and may not offer the network performance needed for video processing.
- **D (Correct)**: P3 instances are designed for high-performance computing, machine learning, and media processing, providing the high network throughput required for the application.
![AWS SAA Question 12](https://i.ytimg.com/vi/7P559fNQc5M/hqdefault.jpg)

Source: iPREP

###### Question 13 of 20

**To comply with data security standards, an organization needs to rotate its AWS IAM user access keys regularly. Which AWS service simplifies this process?**

1. AWS Secrets Manager
2. AWS Config
3. Amazon Inspector
4. AWS CloudTrail

**Correct Answer**: A) AWS Secrets Manager

- **A (Correct)**: AWS Secrets Manager automates the rotation of access keys and other secrets, aligning with security best practices.
- **B**: AWS Config monitors configurations and compliance, but doesn’t facilitate key rotation.
- **C**: Amazon Inspector assesses applications for vulnerabilities, not involved in key rotation.
- **D**: AWS CloudTrail tracks user activity and API usage, not specific to key rotation tasks.
![AWS SAA Question 13](https://i.ytimg.com/vi/JUeFRpfIfW8/hqdefault.jpg)

Source: iPREP

###### Question 14 of 20

**An application running on AWS requires a disaster recovery strategy with minimal downtime and data loss. Which of the following strategies is MOST appropriate?**

1. Multi-region active-active deployment
2. Backup and restore using Amazon S3
3. Pilot light approach in a secondary region
4. Scheduled Amazon EC2 instance snapshots

**Correct Answer**: A) Multi-region active-active deployment

- **A (Correct)**: Multi-region active-active deployment ensures minimal downtime and data loss, providing the highest level of disaster recovery.
- **B**: Backup and restore are cost-effective but may not meet minimal downtime requirements.
- **C**: The pilot light approach is faster than backup and restore but slower than active-active deployment.
- **D**: EC2 snapshots are effective for data backup but do not guarantee minimal downtime.
![AWS SAA Question 14](https://i.ytimg.com/vi/Hmwd0PN1hgk/hqdefault.jpg)

Source: iPREP

###### Question 15 of 20

**An organization wishes to analyze its AWS usage to identify opportunities for cost savings. Which AWS tool should be used to provide detailed reports on cost allocation and usage patterns?**

1. AWS Cost Explorer
2. Amazon QuickSight
3. AWS Budgets
4. AWS Trusted Advisor

**Correct Answer**: A) AWS Cost Explorer

- **A (Correct)**: AWS Cost Explorer is specifically designed for analyzing AWS costs and usage, helping to identify cost-saving opportunities.
- **B**: Amazon QuickSight is a business analytics service, not specialized in cost analysis.
- **C**: AWS Budgets is used for setting budgets and alerts, not detailed usage analysis.
- **D**: AWS Trusted Advisor provides recommendations across various aspects, including cost optimization, but not detailed usage reports.
![AWS SAA Question 15](https://i.ytimg.com/vi/yiI8p5fESY8/hqdefault.jpg)

Source: iPREP

###### Question 16 of 20

**A Solutions Architect is designing a high-traffic web application and needs to choose an appropriate database. Which AWS database service offers the best performance for high-throughput, internet-scale applications with large volumes of data?**

1. Amazon RDS
2. Amazon DynamoDB
3. Amazon Redshift
4. Amazon Aurora

**Correct Answer**: B) Amazon DynamoDB

- **A**: Amazon RDS is optimized for relational data models, not specifically for high-throughput, internet-scale applications.
- **B (Correct)**: DynamoDB is designed for internet-scale applications, providing fast and predictable performance with seamless scalability.
- **C**: Amazon Redshift is ideal for large-scale data warehousing and analytics, not necessarily for high-throughput web applications.
- **D**: Amazon Aurora offers high performance for relational databases, but DynamoDB is more suited for the described scenario.
![AWS SAA Question 16](https://i.ytimg.com/vi/mTt30DWzOWo/hqdefault.jpg)

Source: iPREP

###### Question 17 of 20

**A Solutions Architect needs to ensure that only specific IP addresses can access the Amazon RDS instances in a VPC. Which configuration should be used to restrict the access?**

1. Security Groups with inbound rules for the specific IP addresses
2. NACLs with allow rules for the specific IP addresses
3. AWS WAF with an IP whitelist
4. Amazon Route 53 routing policies

**Correct Answer**: A) Security Groups with inbound rules for the specific IP addresses

- **A (Correct)**: Security Groups effectively restrict access to RDS instances by allowing only specific IP addresses inbound access.
- **B**: NACLs could be used but are less flexible compared to Security Groups for managing database access.
- **C**: AWS WAF is used for controlling HTTP/HTTPS traffic, not suitable for RDS.
- **D**: Amazon Route 53 routing policies manage traffic, not database access control.
![AWS SAA Question 17](https://i.ytimg.com/vi/IqTFH8AQ9dU/hqdefault.jpg)

Source: iPREP

###### Question 18 of 20

**A company wants to ensure high availability for its critical application. The application is hosted on EC2 instances in a single AWS region. What should the Solutions Architect recommend?**

1. Use Elastic Load Balancing across multiple regions
2. Deploy instances in multiple Availability Zones within the region
3. Increase the size of EC2 instances for better performance
4. Implement AWS Lambda for serverless architecture

**Correct Answer**: B) Deploy instances in multiple Availability Zones within the region

- **A**: Elastic Load Balancing across multiple regions is not necessary for single-region high availability.
- **B (Correct)**: Using multiple Availability Zones within the region ensures high availability without the complexity of multi-region deployment.
- **C**: Increasing instance size improves performance but doesn’t address high availability.
- **D**: While AWS Lambda offers scalability, it doesn’t directly address high availability in this scenario.
![AWS SAA Question 18](https://i.ytimg.com/vi/tqhpsXy96-A/hqdefault.jpg)

Source: iPREP

###### Question 19 of 20

**A Solutions Architect is optimizing an application to reduce latency. Which AWS service can improve application performance by caching content?**

1. Amazon S3
2. Amazon EC2
3. Amazon CloudFront
4. AWS Lambda

**Correct Answer**: C) Amazon CloudFront

- **A**: Amazon S3 is for object storage and not primarily for caching content.
- **B**: Amazon EC2 provides compute capacity but does not cache content.
- **C (Correct)**: Amazon CloudFront is a content delivery network (CDN) service that caches content to reduce latency.
- **D**: AWS Lambda is for running code in response to events and does not cache content.
![AWS SAA Question 19](https://i.ytimg.com/vi/k9T1ymqXzWA/hqdefault.jpg)

Source: iPREP

###### Question 20 of 20

**For an application with a variable workload that is not time-sensitive, which AWS pricing model would be the most cost-efficient?**

**Correct Answer**: B) Spot Instances

- **A**: On-Demand Instances, while flexible, are more expensive for variable workloads.
- **B (Correct)**: Spot Instances offer significant cost savings for workloads with flexible timing.
- **C**: Reserved Instances are ideal for predictable usage, not variable workloads.
- **D**: Savings Plans require a commitment to consistent use, which may not align with variable workloads.
![AWS SAA Question 20](https://i.ytimg.com/vi/judptkBrASE/hqdefault.jpg)

Source: iPREP