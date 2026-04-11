# What is Amazon Elastic File System?
> Source: https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Elastic File System (Amazon EFS) provides serverless, fully elastic file storage so that you can share file data without provisioning or managing storage capacity and performance. Amazon EFS is built to scale on demand to petabytes without disrupting applications, growing and shrinking automatically as you add and remove files.

The service manages all the file storage infrastructure for you. Amazon EFS supports the Network File System version 4 (NFSv4.1 and NFSv4.0) protocol. It is accessible across Amazon EC2, Amazon ECS, Amazon EKS, AWS Lambda, and AWS Fargate.

Amazon EFS is highly scalable, highly available, and highly durable. It offers:

- Regional file systems, which store data redundantly across multiple Availability Zones within the same AWS Region.
- One Zone file systems, which store data within a single Availability Zone and may be lower cost but carry single-AZ loss risk.

Amazon EFS provides the throughput, IOPS, and low latency needed for a broad range of workloads. For most workloads, AWS recommends the default modes:

- General Purpose performance mode for latency-sensitive applications.
- Elastic throughput mode to automatically scale throughput up or down with workload activity.

Amazon EFS provides file-system semantics such as strong data consistency and file locking. It supports POSIX permissions, encryption at rest, encryption in transit, IAM controls, and network security controls such as security groups.

Using Amazon EFS with Microsoft Windows-based Amazon EC2 instances is not supported.
