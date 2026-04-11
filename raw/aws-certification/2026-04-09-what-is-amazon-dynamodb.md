# What is Amazon DynamoDB?
> Source: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html
> Collected: 2026-04-09
> Published: Unknown

Amazon DynamoDB is a serverless, fully managed, distributed NoSQL database with single-digit millisecond performance at any scale.

DynamoDB is purpose-built and optimized for operational workloads that require consistent performance at any scale. It supports key-value and document data models and is commonly used for modern serverless applications that need high availability and very low operational overhead.

## Characteristics of DynamoDB

- Serverless: no servers to provision, patch, manage, install, maintain, or operate.
- NoSQL: supports key-value and document models and recommends denormalized data modeling instead of joins.
- Fully managed: handles setup, configuration, maintenance, high availability, hardware provisioning, security, backups, and monitoring.
- Single-digit millisecond performance at any scale.

DynamoDB provides on-demand capacity mode with pay-as-you-go pricing and automatic scaling with no cold starts. It also supports strong read consistency and ACID transactions.

## Capabilities of DynamoDB

- Global tables for multi-active replication across selected Regions.
- ACID transactions across one or more tables.
- DynamoDB Streams and Kinesis Data Streams for DynamoDB for near real-time change data capture.
- Global and local secondary indexes for alternate query patterns.
- Import and export with Amazon S3.
- Zero-ETL integrations with Amazon Redshift and OpenSearch ingestion.
- DynamoDB Accelerator (DAX) for in-memory acceleration.

## Service integrations

DynamoDB integrates with AWS Lambda, AWS AppSync, Amazon API Gateway, Amazon Kinesis Data Streams, AWS CloudFormation, Amazon CloudWatch, Amazon S3, AWS IAM, and AWS Auto Scaling.

## Security

DynamoDB uses IAM for authentication and authorization, supports fine-grained access control, resource-based policies, IAM Access Analyzer, and Block Public Access. It encrypts customer data at rest by default and can use AWS-owned, AWS-managed, or customer-managed KMS keys.

## Resilience

By default, DynamoDB automatically replicates data across three Availability Zones and provides a 99.99% availability SLA.

Resilience features include:

- Global tables
- Continuous backups and point-in-time recovery for up to 35 days
- On-demand backup and restore

## Pricing

DynamoDB supports on-demand and provisioned capacity modes. Charges apply to reads, writes, storage, and optional features you enable.
