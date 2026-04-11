# SAA-C03 Database Services
> Sources: AWS Documentation (Per-Service Docs Corpus), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09; AWS Documentation, Unknown
> Raw: [Amazon Aurora](../../raw/aws-certification/service-docs/amazon-aurora.md); [What is Amazon Aurora?](../../raw/aws-certification/2026-04-09-what-is-amazon-aurora.md); [Amazon Aurora Serverless](../../raw/aws-certification/service-docs/amazon-aurora-serverless.md); [Amazon DocumentDB](../../raw/aws-certification/service-docs/amazon-documentdb.md); [Amazon DynamoDB](../../raw/aws-certification/service-docs/amazon-dynamodb.md); [What is Amazon DynamoDB?](../../raw/aws-certification/2026-04-09-what-is-amazon-dynamodb.md); [Amazon ElastiCache](../../raw/aws-certification/service-docs/amazon-elasticache.md); [Amazon Keyspaces](../../raw/aws-certification/service-docs/amazon-keyspaces.md); [Amazon Neptune](../../raw/aws-certification/service-docs/amazon-neptune.md); [Amazon RDS](../../raw/aws-certification/service-docs/amazon-rds.md); [What is Amazon RDS?](../../raw/aws-certification/2026-04-09-what-is-amazon-rds.md); [Amazon Redshift](../../raw/aws-certification/service-docs/amazon-redshift.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-09

## Overview

SAA-C03 database questions are mostly classification questions: relational versus nonrelational, transactional versus analytical, in-memory acceleration versus system of record, and managed engine family versus specialized data model. The best exam answers usually come from matching the access pattern to the data model instead of defaulting to a familiar engine.

## Core Decision Lens

- Aurora or RDS for relational application data.
- DynamoDB for low-latency key-value or document access at scale.
- DocumentDB for MongoDB-style document workloads.
- Keyspaces for Cassandra-compatible wide-column patterns.
- Neptune for graph relationships.
- Redshift for analytical warehousing.
- ElastiCache for performance acceleration rather than primary persistence.

## Relational Services

### Amazon RDS

Amazon RDS is the managed relational database family for mainstream engines such as MySQL, PostgreSQL, MariaDB, Oracle, and SQL Server. It is the general answer when the question needs relational consistency, managed backups, Multi-AZ failover support, and familiar engines without custom database operations overhead.

### Amazon Aurora

Aurora is the cloud-optimized relational engine compatible with MySQL or PostgreSQL. It tends to be the stronger answer when the prompt wants managed relational storage with higher performance, higher availability, distributed storage, and cluster-oriented AWS-optimized replication behavior.

### Amazon Aurora Serverless

Aurora Serverless is a capacity model for Aurora when demand is intermittent or highly variable. It matters when the question highlights bursty or unpredictable relational workloads and wants to reduce idle capacity costs.

## Nonrelational Services

### Amazon DynamoDB

DynamoDB is the default highly scalable key-value and document database. It is the right answer when the workload needs very low latency, massive scale, simple access patterns, event-driven integrations, or serverless NoSQL design without relational joins.

### Amazon DocumentDB

DocumentDB fits MongoDB-compatible document workloads. It is often the migration-oriented answer when the application model is already centered on MongoDB-style documents.

### Amazon Keyspaces

Keyspaces is the Cassandra-compatible wide-column option. It is useful to recognize for workloads already designed around Cassandra data models and APIs.

### Amazon Neptune

Neptune is the graph database answer. If the prompt is about traversing complex relationships such as social graphs, fraud links, recommendations, or knowledge graphs, Neptune is the likely match.

## Performance And Analytics Layers

### Amazon ElastiCache

ElastiCache is not a database-family replacement for most exam questions; it is a performance layer. Use it when read latency, hot data, or repeated lookups need an in-memory cache in front of a primary store.

### Amazon Redshift

Redshift is the analytical warehouse. It belongs with modeled analytics and BI workloads, not transactional application storage. This is one of the most common distinctions AWS tests.

## Common Comparisons

- RDS vs Aurora: both are relational, but Aurora is the more cloud-optimized, high-performance choice.
- Aurora/RDS vs DynamoDB: relational consistency and SQL versus NoSQL scale and access-pattern design.
- DynamoDB vs ElastiCache: DynamoDB is a primary database; ElastiCache is an acceleration layer.
- Application database vs Redshift: application transactions belong in RDS, Aurora, or DynamoDB; analytics belongs in Redshift.
- Multi-AZ vs read replicas in RDS-family services: Multi-AZ is primarily for high availability, while read replicas are primarily for scaling reads.
- DynamoDB on-demand vs provisioned capacity: on-demand fits unpredictable traffic, while provisioned fits planned throughput and tighter cost control.

## Exam Heuristics

- If the prompt describes joins, transactions, or familiar SQL application storage, start with RDS or Aurora.
- If the prompt emphasizes managed relational simplicity with standard engines, start with RDS.
- If the prompt emphasizes MySQL/PostgreSQL compatibility plus higher performance and managed clustering behavior, think Aurora.
- If the prompt emphasizes millisecond latency and massive key-based scale, think DynamoDB.
- If the prompt emphasizes serverless application data, access-pattern-driven design, streams, or global tables, DynamoDB gets even stronger.
- If the data model is graph-shaped, think Neptune immediately.
- If the question asks how to reduce read load on the database, think ElastiCache before replacing the primary store.

## See Also

- [Amazon RDS](amazon-rds.md)
- [Amazon Aurora](amazon-aurora.md)
- [Amazon DynamoDB](amazon-dynamodb.md)
- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [SAA-C03 Analytics Tools](saa-c03-analytics-tools.md)
