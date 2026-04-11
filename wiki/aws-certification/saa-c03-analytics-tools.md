# SAA-C03 Analytics Tools
> Sources: User-added clipping, 2026-04-09
> Raw: [SAA-C03 Analytics Tools](../../raw/aws-certification/ai-summarized/SAA-C03 Analytics Tools.md)
> Updated: 2026-04-09

## Overview

This page captures study notes about how common AWS analytics services fit together for SAA-C03-style architecture questions. The emphasis is on Glue-centered ETL pipelines, Athena vs operational databases, and the role of services such as EMR, Lake Formation, and QuickSight in a larger analytics stack.

## AWS Glue In System Design

The notes consistently frame AWS Glue as the default serverless ETL service for:

- Building data warehouses in Amazon Redshift
- Creating and maintaining S3-based data lakes
- Parsing and structuring logs
- Preparing datasets for machine learning
- Supporting data migration workflows
- Running scheduled batch pipelines

Glue Crawlers are positioned as schema discovery and cataloging tools, while Glue Jobs are the actual transformation layer. A useful exam shorthand is:

- Crawler = discover metadata
- Job = transform data

## Typical Glue-Centered Pipeline

A common pattern in the notes is:

- Data lands in Amazon S3 raw storage
- Glue Crawler discovers schema and updates the Glue Data Catalog
- Glue Job cleans, joins, partitions, and converts data into analytics-friendly formats such as Parquet
- Processed data is queried through Athena or loaded into Redshift
- QuickSight consumes Athena or Redshift for dashboards

## Athena Positioning

Athena is described as the serverless SQL layer for S3-based data. Its strongest use cases are:

- Ad hoc analytics on files already stored in S3
- Data lake exploration without provisioning infrastructure
- Log analysis and operational investigation
- Low-operations reporting over historical datasets

The notes also emphasize the importance of partitioning and columnar formats such as Parquet to reduce scanned data and improve query efficiency.

## Athena Vs RDS

The source notes distinguish Athena from Amazon RDS clearly:

- Athena is for analytics over files in S3
- RDS is for transactional application databases

That maps well to SAA-C03 thinking:

- Athena = OLAP-style or exploratory querying over a data lake
- RDS = OLTP-style application storage with frequent reads and writes

## EMR, Lake Formation, And QuickSight

The source notes position related analytics services this way:

- Amazon EMR = managed big data cluster option when you need more control than Glue
- AWS Lake Formation = governance and fine-grained permissions for an S3 data lake
- Amazon QuickSight = visualization and BI layer over Athena, Redshift, RDS, and S3-backed datasets

## Exam Heuristics

- Glue when the question asks for serverless ETL
- Athena when the question asks to query S3 directly with SQL
- Redshift when the question asks for a data warehouse
- EMR when the question asks for Spark, Hadoop, or higher-control big data processing
- Lake Formation when the question asks for data lake governance or fine-grained permissions
- QuickSight when the question asks for dashboards or BI
