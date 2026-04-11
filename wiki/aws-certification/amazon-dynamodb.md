# Amazon DynamoDB
> Sources: AWS Documentation, Unknown; AWS Documentation (Per-Service Docs Corpus), 2026-04-09
> Raw: [What is Amazon DynamoDB?](../../raw/aws-certification/2026-04-09-what-is-amazon-dynamodb.md); [Amazon DynamoDB](../../raw/aws-certification/service-docs/amazon-dynamodb.md)
> Updated: 2026-04-09

## Overview

Amazon DynamoDB is the default SAA-C03 answer for serverless NoSQL workloads that need consistent single-digit millisecond performance at scale. The exam uses DynamoDB to test whether the architecture should move away from relational joins and toward access-pattern-driven key-value or document design with minimal operational overhead.

## Core Exam Model

- DynamoDB is a fully managed, serverless NoSQL database.
- It supports key-value and document data models.
- It is optimized for operational workloads that need predictable low latency at large scale.
- DynamoDB design usually starts with access patterns and denormalized modeling rather than relational normalization.

## Data Modeling And Query Clues

- DynamoDB does not use joins in the relational sense, so denormalized modeling is a core design expectation.
- Global secondary indexes and local secondary indexes are the clues that alternate query patterns must be designed into the table.
- DynamoDB is a strong fit when the workload is key-based, high-throughput, and latency-sensitive.
- ACID transactions exist, but they do not make DynamoDB a drop-in relational substitute for every SQL workload.

## Scaling, Capacity, And Performance

- On-demand capacity is the best fit when traffic is unpredictable or spiky.
- Provisioned capacity is the clue when workloads are more predictable and cost control depends on planned throughput.
- DynamoDB scales without managing servers or maintenance windows.
- DAX is the clue when the prompt needs in-memory acceleration for DynamoDB reads.

## Event, Analytics, And Integration Patterns

- DynamoDB Streams is the near-real-time change-data-capture clue for event-driven architectures.
- Lambda integration is a frequent SAA-C03 pattern for reacting to table changes.
- AppSync and API Gateway often appear when DynamoDB backs serverless application APIs.
- S3 import/export and zero-ETL integrations with Redshift or OpenSearch matter when DynamoDB operational data also needs analytics or search.

## Resilience And Protection

- DynamoDB automatically replicates across three Availability Zones by default.
- Global tables are the multi-Region, multi-active resilience clue.
- Point-in-time recovery is the restore-to-a-specific-time clue.
- On-demand backups are the long-term retention and backup-management clue.

## Common SAA-C03 Comparisons

- DynamoDB vs RDS or Aurora: choose DynamoDB for access-pattern-driven NoSQL scale; choose RDS or Aurora for relational workloads and SQL-centric designs.
- DynamoDB vs ElastiCache: choose DynamoDB as the primary database; choose ElastiCache as an acceleration layer.
- DynamoDB vs Redshift: choose DynamoDB for operational application data; choose Redshift for analytics warehousing.

## Common SAA-C03 Traps

- Choosing DynamoDB for workloads that fundamentally depend on relational joins and ad hoc SQL patterns.
- Ignoring access-pattern design and assuming secondary indexes can fix an unplanned data model later without tradeoffs.
- Confusing global tables with ordinary single-Region high availability.
- Forgetting to distinguish on-demand from provisioned capacity when the question is really about traffic predictability and cost model.

## See Also

- [Amazon RDS](amazon-rds.md)
- [Amazon Aurora](amazon-aurora.md)
- [SAA-C03 Database Services](saa-c03-database-services.md)
- [AWS Lambda](aws-lambda.md)
