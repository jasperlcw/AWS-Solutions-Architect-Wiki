---
title: "AWS Analytics Cheat Sheet"
source: "https://chatgpt.com/c/69c70f64-0b40-83e8-913e-1a7155d16905"
author:
published:
created: 2026-04-09
description: "ChatGPT is your AI chatbot for everyday use. Chat with the most advanced AI to explore ideas, solve problems, and learn faster."
tags:
  - "clippings"
---
Here’s a **clean, one-page cheat sheet** for AWS Analytics services tailored for the **SAA-C03 exam**. It’s organized by **data flow (ingest → process → store → analyze → visualize)** so you can quickly reason about architectures.

---

## ☁️ AWS Analytics Cheat Sheet (SAA-C03)

## 🔹 1. Data Ingestion (Streaming & Batch)

### Amazon Kinesis (Real-time streaming)

- **Kinesis Data Streams**
- **Kinesis Data Firehose**
	- Fully managed delivery (no shard management)
		- Auto-load to:
		- S3
				- Redshift
				- OpenSearch
		- Built-in transformation (Lambda)
		- Example: Log ingestion → S3
- **Kinesis Data Analytics**
	- Real-time SQL / Apache Flink processing
		- Example: detect anomalies in streaming data

---

### Amazon MSK (Managed Kafka)

- Fully managed Apache Kafka
- Use when:
	- You need Kafka ecosystem compatibility
- Example: enterprise event streaming pipelines

---

### AWS Data Exchange

- Third-party datasets marketplace
- Example: financial data, weather data feeds

---

## 🔹 2. Data Storage (Data Lake & Warehouse)

### Amazon S3 (Data Lake)

- Cheap, scalable object storage
- Stores raw + processed data
- Foundation of most analytics architectures

---

### Amazon Redshift (Data Warehouse)

- Columnar storage, optimized for analytics
- Supports SQL queries on structured data
- **Redshift Spectrum** → query S3 directly
- Example: BI dashboards, reporting

---

### Amazon EMR (Big Data Processing)

- Managed Hadoop / Spark / Presto
- Use when:
	- You need full control over big data frameworks
- Example: large-scale ETL jobs

---

## 🔹 3. Data Processing (ETL / Transform)

### AWS Glue

- Serverless ETL service
- Components:
	- **Glue Crawler** → discovers schema
		- **Glue Data Catalog** → metadata store
		- **Glue Jobs** → ETL pipelines
- Example: S3 raw logs → structured tables

---

### AWS Lake Formation

- Builds secure data lakes on S3
- Handles:
	- Permissions (fine-grained access)
		- Data governance
- Works with Glue + Athena + Redshift

---

## 🔹 4. Data Query & Analysis

### Amazon Athena

- Serverless SQL queries on S3
- Uses Glue Data Catalog
- Pay per query
- Example: query logs in S3

---

### Amazon OpenSearch Service

- Search + log analytics
- Near real-time indexing
- Example: log search, dashboards, observability

---

## 🔹 5. Visualization & BI

### Amazon QuickSight

- BI dashboards
- Connects to:
	- Athena
		- Redshift
		- S3
- ML-powered insights
- Example: business dashboards

---

## 🔹 6. Supporting Services (Often Tested)

### AWS CloudWatch Logs Insights

- Query logs using SQL-like syntax
- Best for:
	- Operational log analysis (not long-term analytics)

---

### AWS Glue Data Catalog

- Central metadata repository
- Used by:
	- Athena
		- Redshift Spectrum
		- EMR

---

## 🔁 Typical Architectures

## 🧠 Batch Analytics (Data Lake)

```markdown
S3 → Glue (ETL) → Athena → QuickSight
```

## ⚡ Real-Time Analytics

```markdown
App → Kinesis Streams → Lambda / Kinesis Analytics → S3 / OpenSearch / Redshift
```

## 🏢 Enterprise Data Warehouse

```markdown
S3 → Glue → Redshift → QuickSight
```

## 🔍 Log Analytics

```markdown
App → Firehose → S3 → Athena
OR
App → Firehose → OpenSearch
```

---

## ⚖️ Key Comparisons (Exam Favorites)

### Athena vs Redshift

| Feature | Athena | Redshift |
| --- | --- | --- |
| Type | Serverless | Cluster |
| Data | S3 | Stored internally |
| Cost | Per query | Provisioned |
| Use case | Ad hoc queries | BI dashboards |

---

### Kinesis Streams vs Firehose

| Feature | Streams | Firehose |
| --- | --- | --- |
| Control | High | Low |
| Latency | Real-time | Near real-time |
| Management | Manual shards | Fully managed |
| Use case | Custom apps | Simple ingestion |

---

### EMR vs Glue

| Feature | EMR | Glue |
| --- | --- | --- |
| Control | High | Low |
| Frameworks | Spark, Hadoop | Spark (managed) |
| Use case | Complex pipelines | Serverless ETL |

---

### OpenSearch vs Athena

| Feature | OpenSearch | Athena |
| --- | --- | --- |
| Query Type | Search | SQL |
| Data | Indexed | S3 files |
| Speed | Near real-time | Slower |
| Use case | Logs search | Data analysis |

---

## 🧠 Exam Tips

- **S3 = default data lake**
- **Athena = query S3**
- **Glue = ETL + catalog**
- **Redshift = structured analytics**
- **Kinesis = streaming**
- **Firehose = easiest ingestion**
- **OpenSearch = search logs**
- **QuickSight = dashboards**

---

If you want, I can turn this into:

- a **visual architecture diagram**
- or a **set of practice exam questions based on this sheet**