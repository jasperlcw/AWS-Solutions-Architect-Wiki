# What is Amazon Aurora?
> Source: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Aurora (Aurora) is a fully managed relational database engine that's compatible with MySQL and PostgreSQL. The code, tools, and applications you use today with your existing MySQL and PostgreSQL databases can be used with Aurora.

With some workloads, Aurora can deliver up to five times the throughput of MySQL and up to three times the throughput of PostgreSQL without requiring changes to most of your existing applications.

Aurora includes a high-performance storage subsystem. Its MySQL- and PostgreSQL-compatible database engines are customized to take advantage of that fast distributed storage. The underlying storage grows automatically as needed. An Aurora cluster volume can grow to a maximum size of 128 tebibytes (TiB). Aurora also automates and standardizes database clustering and replication, which are typically among the most challenging aspects of database configuration and administration.

Aurora is part of the managed database service Amazon Relational Database Service (Amazon RDS). Amazon RDS makes it easier to set up, operate, and scale a relational database in the cloud.

## Amazon RDS shared responsibility model

Amazon RDS is responsible for hosting the software components and infrastructure of DB instances and DB clusters. You are responsible for query tuning, which is highly dependent on database design, data size, data distribution, application workload, and query patterns. You can use Amazon RDS Performance Insights and other tools to identify problematic queries.

## How Amazon Aurora works with Amazon RDS

Aurora relates to the standard MySQL and PostgreSQL engines available in Amazon RDS as follows:

- You choose Aurora MySQL or Aurora PostgreSQL as the DB engine option when setting up new database servers through Amazon RDS.
- Aurora uses familiar Amazon RDS management and administration features, including the AWS Management Console, AWS CLI commands, and API operations for provisioning, patching, backup, recovery, failure detection, and repair.
- Aurora management operations typically involve entire clusters of database servers synchronized through replication instead of individual database instances.
- Automatic clustering, replication, and storage allocation make it simpler and more cost-effective to set up, operate, and scale large MySQL and PostgreSQL deployments.
- You can bring data from Amazon RDS for MySQL and Amazon RDS for PostgreSQL into Aurora by creating and restoring snapshots or by setting up one-way replication.
- AWS provides push-button migration tools to convert existing RDS for MySQL and RDS for PostgreSQL applications to Aurora.
