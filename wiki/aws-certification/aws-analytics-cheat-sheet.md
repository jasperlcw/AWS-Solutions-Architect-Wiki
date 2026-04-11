# AWS Analytics Cheat Sheet
> Sources: User-added clipping, 2026-04-09
> Raw: [AWS Analytics Cheat Sheet](../../raw/aws-certification/ai-summarized/AWS Analytics Cheat Sheet.md)
> Updated: 2026-04-09

## Overview

This page captures a compact SAA-C03-oriented mental model for AWS analytics services. The main value is the end-to-end framing of analytics architecture as ingest, store, process, analyze, and visualize.

## Analytics Flow

- Ingest: Amazon Kinesis, Amazon MSK, AWS Data Exchange
- Store: Amazon S3 as the default data lake
- Process: AWS Glue, AWS Lake Formation, Amazon EMR
- Analyze: Amazon Athena, Amazon OpenSearch Service, Amazon Redshift
- Visualize: Amazon QuickSight

## Service Positioning

### Ingestion

Kinesis is the default choice for real-time streaming pipelines. Kinesis Data Firehose is the lower-operations option for delivering streaming data to destinations such as S3, Redshift, and OpenSearch. Amazon MSK fits Kafka-compatible event streaming needs, and AWS Data Exchange fits third-party dataset ingestion.

### Storage

Amazon S3 is the default analytics storage layer and the foundation of most AWS data lake designs.

### Processing

AWS Glue is positioned as the serverless ETL service, including crawlers, jobs, and the Glue Data Catalog. AWS Lake Formation is treated as the governance and permissions layer for S3-based data lakes. Amazon EMR is the higher-control option when a design needs Spark, Hadoop, or similar big data frameworks.

### Query And Analysis

Amazon Athena is the serverless SQL engine for querying data in S3. Amazon Redshift is the warehouse option for structured analytics and business intelligence workloads. Amazon OpenSearch Service is for search-oriented analytics and log exploration.

### Visualization

Amazon QuickSight is the dashboarding and BI layer.

## Architecture Patterns

Common patterns captured in the source notes include:

- Batch analytics: S3 -> Glue -> Athena -> QuickSight
- Enterprise warehouse analytics: S3 -> Glue -> Redshift -> QuickSight
- Real-time analytics: App -> Kinesis -> processing -> S3, OpenSearch, or Redshift
- Log analytics: App -> Firehose -> S3 -> Athena, or App -> Firehose -> OpenSearch

## Exam Heuristics

- S3 = default data lake
- Athena = query S3
- Glue = ETL and catalog
- Redshift = warehouse analytics
- Kinesis = streaming ingestion
- Firehose = easiest managed delivery
- OpenSearch = log search and near-real-time search analytics
- QuickSight = dashboards
