# Amazon RDS
> Sources: AWS Documentation, Unknown; AWS Documentation (Per-Service Docs Corpus), 2026-04-09
> Raw: [What is Amazon RDS?](../../raw/aws-certification/2026-04-09-what-is-amazon-rds.md); [Amazon RDS](../../raw/aws-certification/service-docs/amazon-rds.md)
> Updated: 2026-04-09

## Overview

Amazon RDS is the default SAA-C03 answer for managed relational databases when the workload needs SQL semantics, familiar commercial or open-source engines, automated backups and patching, and less operational burden than self-managing a database on EC2. The exam often tests whether you should choose the managed relational baseline or a more specialized relational option such as Aurora.

## Core Exam Model

- RDS is the managed relational service for engines such as MySQL, PostgreSQL, MariaDB, Oracle, SQL Server, and Db2.
- AWS handles much of the undifferentiated database administration, including backups, patching, failure detection, and recovery.
- You still own schema design, query tuning, and workload-specific performance tuning.
- RDS is generally the best first answer for mainstream relational application databases unless the scenario explicitly pushes toward Aurora or a nonrelational model.

## What RDS Manages Versus What You Manage

AWS documentation explicitly positions RDS as the default choice over running relational databases on EC2 or on premises for most deployments.

- AWS manages infrastructure hosting, operating system work, database software installation and patching, backups, and much of the high-availability scaffolding.
- You manage query tuning and application-level database optimization.
- Compared with EC2-hosted databases, RDS lowers operational burden but also reduces low-level control.

On SAA-C03, this usually appears as a tradeoff question: choose RDS when managed operations matter more than full host-level customization.

## Engines, Instance Classes, And Storage

- Choose RDS when the scenario requires a standard relational engine rather than Aurora-specific clustering behavior.
- Instance classes map to compute and memory sizing choices, so scaling the database often starts with selecting or changing the DB instance class.
- Storage choices include General Purpose SSD and Provisioned IOPS, with Provisioned IOPS fitting more I/O-intensive production workloads.
- RDS uses EBS-backed storage, which matters when the prompt emphasizes durable block-backed database storage.

## Availability, Read Scaling, And Networking

- Multi-AZ deployments are the high-availability answer for failover and redundancy.
- Read replicas are the read-scaling answer.
- RDS commonly resides in private subnets inside a VPC rather than being internet-facing.
- The exam often pairs RDS with EC2 application servers, load balancers, and private networking patterns.

One important exam distinction is that Multi-AZ is about high availability and failover first, while read replicas are about scaling reads.

## Common SAA-C03 Comparisons

- RDS vs EC2-hosted database: choose RDS when managed operations, backups, and patching are the priority.
- RDS vs Aurora: choose RDS for mainstream managed relational engines; choose Aurora when the prompt explicitly values Aurora's cloud-optimized performance and cluster-oriented design.
- RDS vs DynamoDB: choose RDS when the data model is relational and SQL-driven.

## Common SAA-C03 Traps

- Confusing Multi-AZ failover with read-scaling replicas.
- Choosing EC2 for a database when the prompt does not require OS-level database control.
- Forgetting that RDS still leaves query tuning and schema design to you.
- Treating all relational options as equivalent when Aurora-specific performance or clustering clues are present.

## See Also

- [Amazon Aurora](amazon-aurora.md)
- [SAA-C03 Database Services](saa-c03-database-services.md)
- [SAA-C03 Cost Management Services](saa-c03-cost-management-services.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
