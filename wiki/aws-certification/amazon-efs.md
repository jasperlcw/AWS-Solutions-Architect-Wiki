# Amazon EFS
> Sources: AWS Documentation, Unknown; AWS Documentation (Per-Service Docs Corpus), 2026-04-09
> Raw: [What is Amazon EFS?](../../raw/aws-certification/2026-04-09-what-is-amazon-efs.md); [Amazon EFS](../../raw/aws-certification/service-docs/amazon-efs.md)
> Updated: 2026-04-09

## Overview

Amazon EFS is the SAA-C03 answer for fully managed, elastic, shared file storage for Linux-based workloads. The exam tests EFS when multiple compute resources need concurrent NFS access, when file capacity should scale automatically, or when architects must distinguish shared file storage from block or object storage.

## Core Exam Model

- EFS is a managed NFS file system, not block storage and not object storage.
- EFS scales automatically as files are added and removed.
- EFS is accessible from services such as EC2, ECS, EKS, Lambda, and Fargate.
- EFS is designed for shared access from many clients at the same time.

## Availability And Performance Choices

- Regional EFS is the default answer when high availability across multiple Availability Zones matters.
- One Zone EFS is the lower-resilience, lower-cost clue when single-AZ storage is acceptable.
- General Purpose performance mode fits latency-sensitive general workloads.
- Elastic throughput is the clue that throughput should scale with workload activity without manual provisioning.

## Security And File Semantics

- EFS supports POSIX permissions, file locking, and strong consistency semantics.
- Access is controlled through IAM, security groups, and network path controls.
- Encryption can apply both at rest and in transit.
- EFS is not for Windows-based EC2 instances.

## Common SAA-C03 Comparisons

- EFS vs EBS: choose EFS for shared file access across multiple clients; choose EBS for instance-attached block storage.
- EFS vs FSx: choose EFS for general Linux NFS workloads; choose FSx when a specialized filesystem or Windows file share is required.
- EFS vs S3: choose EFS when applications need mounted file semantics rather than object APIs.

## Common SAA-C03 Traps

- Choosing EFS when the workload is really object storage on S3.
- Choosing EBS when many clients need concurrent file access.
- Forgetting that EFS is a Linux/NFS answer, not a Windows file share answer.
- Missing that Lambda and containers can use EFS when the prompt needs shared persistent files in serverless or containerized designs.

## See Also

- [AWS Lambda](aws-lambda.md)
- [Amazon EBS](amazon-ebs.md)
- [SAA-C03 Storage Services](saa-c03-storage-services.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
