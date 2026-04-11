# What is Amazon Elastic Block Store?
> Source: https://docs.aws.amazon.com/ebs/latest/userguide/what-is-ebs.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Elastic Block Store (Amazon EBS) provides scalable, high-performance block storage resources that can be used with Amazon Elastic Compute Cloud (Amazon EC2) instances.

With Amazon Elastic Block Store, you can create and manage:

- Amazon EBS volumes, which you attach to Amazon EC2 instances and use like local hard drives for files or installed applications.
- Amazon EBS snapshots, which are point-in-time backups of Amazon EBS volumes that persist independently from the volume itself.

## Features of Amazon EBS

Amazon EBS provides the following features and benefits:

- Multiple volume types, divided into SSD-backed storage for transactional workloads and HDD-backed storage for throughput-intensive workloads.
- Scalability through Elastic Volumes operations that can dynamically increase capacity or tune performance with no downtime.
- Backup and recovery through EBS snapshots that can restore volumes or migrate data across AWS accounts, AWS Regions, or Availability Zones.
- Data protection through EBS encryption for volumes and snapshots.
- Data availability and durability, including replication across multiple servers in an Availability Zone.
- Data archiving through EBS Snapshots Archive for long-term retention.

## Related services

Amazon EBS works with:

- Amazon EC2
- AWS Key Management Service (AWS KMS)
- Amazon Data Lifecycle Manager
- EBS direct APIs
- Recycle Bin

## Accessing Amazon EBS

You can create and manage Amazon EBS resources using:

- Amazon EC2 console
- AWS Command Line Interface
- AWS Tools for PowerShell
- CloudFormation
- Amazon EC2 Query API
- AWS SDKs

## Pricing

With Amazon EBS, you pay only for what you provision.
