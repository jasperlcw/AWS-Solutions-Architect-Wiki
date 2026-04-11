# What is Amazon Relational Database Service (Amazon RDS)?
> Source: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Relational Database Service (Amazon RDS) is a web service that makes it easier to set up, operate, and scale a relational database in the AWS Cloud. It provides cost-efficient, resizable capacity for an industry-standard relational database and manages common database administration tasks.

This guide covers Amazon RDS database engines other than Amazon Aurora. For information about using Amazon Aurora, see the Amazon Aurora User Guide.

## Advantages of Amazon RDS

Amazon RDS is a managed database service. It's responsible for most management tasks. By eliminating tedious manual processes, Amazon RDS frees you to focus on your application and your users.

Amazon RDS provides the following principal advantages over database deployments that aren't fully managed:

- You can use database engines that you are already familiar with: IBM Db2, MariaDB, Microsoft SQL Server, MySQL, Oracle Database, and PostgreSQL.
- Amazon RDS manages backups, software patching, automatic failure detection, and recovery.
- You can turn on automated backups, or manually create your own backup snapshots. You can use these backups to restore a database.
- You can get high availability with a primary DB instance and a synchronous secondary DB instance that you can fail over to when problems occur.
- You can also use read replicas to increase read scaling.
- In addition to the security in your database package, you can control access by using IAM to define users and permissions and can help protect your databases by putting them in a VPC.

## Comparison of responsibilities with Amazon EC2 and on-premises deployments

AWS recommends Amazon RDS as the default choice for most relational database deployments.

Compared with on-premises databases and databases run on Amazon EC2:

- Application optimization remains the customer's responsibility in all three models.
- With Amazon RDS, AWS manages scaling support, high availability support, database backups, database software patching and installation, operating system patching and installation, server maintenance, hardware lifecycle, and power/network/cooling.
- Running a database on EC2 separates CPU, memory, storage, and IOPS so they can scale independently, but it leaves more room for operational error because customers still patch and manage the database stack.

## Amazon RDS shared responsibility model

Amazon RDS is responsible for hosting the software components and infrastructure of DB instances and DB clusters. You are responsible for query tuning, which depends on database design, data size, data distribution, application workload, and query patterns. Amazon RDS Performance Insights and other tools can help identify problematic queries.

## Amazon RDS DB instances

A DB instance is an isolated database environment in the AWS Cloud. The basic building block of Amazon RDS is the DB instance. A DB instance can contain one or more user-created databases.

You can access DB instances by using the same tools and applications that you use with a standalone database instance. You can create and modify a DB instance by using the AWS CLI, the Amazon RDS API, or the AWS Management Console.

### DB engines

Amazon RDS supports the following database engines:

- IBM Db2
- MariaDB
- Microsoft SQL Server
- MySQL
- Oracle Database
- PostgreSQL

Each DB engine has its own supported features. Feature support varies across AWS Regions and specific engine versions.

### DB instance classes

A DB instance class determines the computation and memory capacity of a DB instance. Amazon RDS supports:

- General purpose: `db.m*`
- Memory optimized: `db.z*`, `db.x*`, `db.r*`
- Compute optimized: `db.c*`
- Burstable performance: `db.t*`

You can change DB instance class as requirements change over time.

### DB instance storage

RDS DB instance storage uses Amazon EBS and comes in these types:

- General Purpose (SSD)
- Provisioned IOPS (PIOPS)
- Magnetic

AWS recommends General Purpose SSD or Provisioned IOPS SSD for new storage needs.

### DB instances in an Amazon VPC

You can run a DB instance in a VPC. Amazon RDS manages backups, software patching, automatic failure detection, and recovery whether the DB instance is in a VPC or not.

## AWS Regions and Availability Zones

With Amazon RDS, you can create DB instances in multiple AWS Regions.

### Multi-AZ deployments

You can run a DB instance in several Availability Zones using a Multi-AZ deployment. Amazon RDS automatically provisions and maintains one or more secondary standby DB instances in a different AZ.

Multi-AZ deployments provide:

- Data redundancy and failover support
- Elimination of I/O freezes
- Lower latency spikes during system backups
- The ability to serve read traffic on secondary DB instances for Multi-AZ DB cluster deployments
