# Amazon EBS
> Sources: AWS Documentation, Unknown; AWS Documentation (Per-Service Docs Corpus), 2026-04-09
> Raw: [What is Amazon EBS?](../../raw/aws-certification/2026-04-09-what-is-amazon-ebs.md); [Amazon EBS](../../raw/aws-certification/service-docs/amazon-ebs.md)
> Updated: 2026-04-09

## Overview

Amazon EBS is the default SAA-C03 answer for persistent block storage attached to EC2. The exam typically uses EBS to test whether the workload needs low-latency block storage, boot volumes, instance-attached database storage, snapshots, or independent tuning of capacity and performance.

## Core Exam Model

- EBS provides block storage volumes for EC2 instances.
- EBS volumes behave like attached disks for filesystems, applications, and boot volumes.
- EBS snapshots are point-in-time backups that persist independently of the live volume.
- EBS is an EC2 companion service, not a shared multi-instance file service or object store.

## Performance And Volume-Type Heuristics

- SSD-backed EBS is the right mental model for transactional workloads.
- HDD-backed EBS is the right mental model for throughput-oriented workloads.
- Elastic Volumes is the clue that EBS capacity or performance can be adjusted without rebuilding the volume.
- Provisioned block storage performance is a common exam differentiator versus fully elastic file or object services.

## Availability, Backup, And Protection

- EBS volume data is replicated across multiple servers within a single Availability Zone.
- Snapshots are the backup and restore primitive for EBS.
- Snapshots can also support migration patterns across accounts, Regions, or Availability Zones.
- Encryption for volumes and snapshots can be integrated with AWS KMS.
- Snapshots Archive is the retention clue for long-term low-cost snapshot storage.

## Common SAA-C03 Comparisons

- EBS vs EFS: choose EBS for block storage attached to EC2; choose EFS for shared NFS file storage.
- EBS vs S3: choose EBS for attached block storage and boot volumes; choose S3 for object storage.
- EBS vs instance store: choose EBS for persistence beyond instance lifecycle events.

## Common SAA-C03 Traps

- Choosing EBS when multiple instances need the same shared filesystem semantics.
- Treating snapshots like a live shared storage layer.
- Forgetting that EBS is AZ-scoped even though snapshots can help with broader recovery patterns.
- Choosing object storage when the prompt clearly needs an attached disk.

## See Also

- [Amazon EC2](amazon-ec2.md)
- [Amazon EFS](amazon-efs.md)
- [SAA-C03 Storage Services](saa-c03-storage-services.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
