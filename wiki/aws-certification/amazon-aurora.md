# Amazon Aurora
> Sources: AWS Documentation, Unknown; AWS Documentation (Per-Service Docs Corpus), 2026-04-09
> Raw: [What is Amazon Aurora?](../../raw/aws-certification/2026-04-09-what-is-amazon-aurora.md); [Amazon Aurora](../../raw/aws-certification/service-docs/amazon-aurora.md)
> Updated: 2026-04-09

## Overview

Amazon Aurora is the SAA-C03 relational answer when the prompt wants a fully managed MySQL- or PostgreSQL-compatible database with higher performance, cloud-optimized distributed storage, automatic clustering and replication behavior, and simpler scaling for demanding relational workloads. It is still part of Amazon RDS, but it should be recognized as a distinct service choice on the exam.

## Core Exam Model

- Aurora is compatible with MySQL and PostgreSQL.
- Aurora is fully managed and uses Amazon RDS operational tooling and APIs.
- Aurora is designed around cluster-oriented management rather than a single standalone DB instance mindset.
- Aurora emphasizes performance, availability, and scaling advantages over standard open-source engines in RDS.

## Why Aurora Is Different

- Aurora uses a high-performance distributed storage subsystem.
- Storage grows automatically as needed, up to 128 TiB for an Aurora cluster volume.
- Aurora automates clustering and replication, which are operationally harder in self-managed relational deployments.
- AWS documentation highlights up to five times the throughput of MySQL and up to three times the throughput of PostgreSQL for some workloads.

For SAA-C03, these clues usually signal that Aurora is the stronger answer than standard RDS engines when the workload is relational but more performance- and availability-sensitive.

## Aurora And RDS Relationship

- You select Aurora MySQL or Aurora PostgreSQL as an engine option through Amazon RDS.
- Aurora still uses the familiar RDS console, CLI, API, backup, patching, recovery, and repair workflows.
- Management operations typically focus on clusters of database servers synchronized through replication.
- Migration paths from RDS for MySQL and RDS for PostgreSQL include snapshots, one-way replication, and AWS migration tooling.

This relationship matters on the exam because Aurora is not a separate database category from RDS; it is a specialized managed relational choice inside the broader RDS ecosystem.

## Common SAA-C03 Comparisons

- Aurora vs standard RDS engines: choose Aurora when the prompt emphasizes cloud-optimized relational performance, high availability, and managed clustering behavior.
- Aurora vs Aurora Serverless: choose Aurora Serverless when the key differentiator is intermittent or highly variable relational demand.
- Aurora vs DynamoDB: choose Aurora when the workload still needs relational modeling and SQL compatibility.

## Common SAA-C03 Traps

- Treating Aurora as interchangeable with every standard RDS engine.
- Missing the clue that Aurora is only MySQL- and PostgreSQL-compatible, not a fit for Oracle or SQL Server engine requirements.
- Forgetting that Aurora is managed through RDS even though it has distinct architecture and scaling behavior.
- Choosing Aurora when the prompt only needs a straightforward managed relational engine without Aurora-specific advantages.

## See Also

- [Amazon RDS](amazon-rds.md)
- [SAA-C03 Database Services](saa-c03-database-services.md)
- [SAA-C03 Analytics Tools](saa-c03-analytics-tools.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
