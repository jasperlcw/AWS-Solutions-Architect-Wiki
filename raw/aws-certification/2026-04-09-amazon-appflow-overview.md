# What is Amazon AppFlow?
> Source: https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html
> Collected: 2026-04-09
> Published: Unknown

Amazon AppFlow is a fully-managed integration service that enables you to securely exchange data between software as a service (SaaS) applications, such as Salesforce, and AWS services, such as Amazon S3 and Amazon Redshift.

Amazon AppFlow enables you to do the following:

- Create data flows to transfer data between a source and destination without writing code
- Run flows on demand or on a schedule to keep data in sync across SaaS applications and AWS services
- Aggregate data from multiple sources for analytics
- Monitor what data moved where and when
- Encrypt data at rest and in transit
- Transfer data privately with AWS PrivateLink
- Catalog transferred S3 data in the AWS Glue Data Catalog
- Organize transferred data into partitions and files to optimize query performance
- Develop custom connectors for sources that are not already integrated

Example use cases include:

- Transfer Salesforce opportunities to Amazon Redshift tables
- Analyze Slack conversations in Amazon Redshift, Snowflake, or Amazon S3
- Transfer Zendesk support tickets for storage and analysis
- Transfer aggregate SaaS data weekly to Amazon S3
