# SAA-C03 Storage Services
> Sources: AWS Documentation (Per-Service Docs Corpus), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09; AWS Documentation, Unknown
> Raw: [AWS Backup](../../raw/aws-certification/service-docs/aws-backup.md); [Amazon EBS](../../raw/aws-certification/service-docs/amazon-ebs.md); [Amazon EFS](../../raw/aws-certification/service-docs/amazon-efs.md); [Amazon FSx (for all types)](../../raw/aws-certification/service-docs/amazon-fsx-all-types.md); [Amazon S3](../../raw/aws-certification/service-docs/amazon-s3.md); [What is Amazon S3?](../../raw/aws-certification/2026-04-09-what-is-amazon-s3.md); [Amazon S3 Glacier](../../raw/aws-certification/service-docs/amazon-s3-glacier.md); [AWS Storage Gateway](../../raw/aws-certification/service-docs/aws-storage-gateway.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-09

## Overview

Storage is one of the most repeated SAA-C03 choice patterns. The exam usually tests whether the workload needs object, block, file, archive, or hybrid storage, and whether the storage must attach to instances, scale elastically across clients, or integrate with on-premises environments.

## Core Decision Lens

- S3 for object storage.
- EBS for block storage attached to EC2.
- EFS for shared elastic file storage.
- FSx for specialized managed file systems.
- S3 Glacier for low-cost archival retention.
- Storage Gateway for hybrid storage integration.
- AWS Backup for centralized backup governance across supported services.

## Object And Archive Storage

### Amazon S3

Amazon S3 is the default durable object storage building block across AWS. If the workload is about storing files, logs, backups, data lakes, static assets, or long-term durable objects, S3 is usually the primary answer. For SAA-C03, also remember the secondary decision layers inside S3 itself: storage class selection, versioning, lifecycle, replication, public access controls, and whether the scenario is really pushing you toward archive retrieval behavior instead of hot object storage.

### Amazon S3 Glacier

S3 Glacier belongs to the archival end of the S3 storage-class family. Use it when the prompt emphasizes long retention, low storage cost, and infrequent access rather than fast hot-data retrieval.

## Block And File Storage

### Amazon EBS

Amazon EBS is block storage for EC2 instances. It is the answer when workloads need attached volumes, boot disks, instance-level persistence, snapshots, or database storage on virtual machines.

### Amazon EFS

Amazon EFS is the elastic shared file system answer for Linux workloads needing NFS-style access across multiple clients. It is especially strong when capacity should scale automatically and the same files must be mounted by many compute resources.

### Amazon FSx

Amazon FSx is the family of specialized managed file systems. Its variants matter when the prompt points to a specific file-system ecosystem or workload shape such as Windows file shares, Lustre for high-performance computing, NetApp ONTAP, or OpenZFS compatibility.

## Hybrid And Protection Services

### AWS Storage Gateway

Storage Gateway bridges on-premises storage patterns with AWS storage services. It is a hybrid integration tool, not a replacement for native storage classes.

### AWS Backup

AWS Backup centralizes backup policy and recovery management across supported AWS services. It becomes the answer when the question is really about backup governance, retention, or operational consistency across resources.

## Common Comparisons

- S3 vs EBS vs EFS: object vs block vs file.
- EFS vs FSx: elastic general shared file system versus specialized managed file systems.
- S3 standard storage classes vs Glacier archival classes: active object storage versus cold archive retention.
- Storage Gateway vs direct cloud-native storage: hybrid bridge versus AWS-native-only design.

## Exam Heuristics

- If the application needs a disk attached to an EC2 instance, think EBS.
- If multiple Linux clients need shared file access, think EFS.
- If the workload needs Windows file shares or specialized file-system semantics, think FSx.
- If the workload needs highly durable object storage with event integrations, lifecycle controls, or static asset hosting, think S3.
- If the question emphasizes archive retention and lower cost, think Glacier.

## See Also

- [Amazon S3](amazon-s3.md)
- [Amazon EBS](amazon-ebs.md)
- [Amazon EFS](amazon-efs.md)
- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
