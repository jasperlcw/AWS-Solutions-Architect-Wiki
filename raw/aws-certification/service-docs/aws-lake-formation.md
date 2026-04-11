# AWS Lake Formation
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/analytics.html
> Collected: 2026-04-09
> Published: Unknown

AWS Lake Formation is a service that makes it easy to
   set up a secure data lake in days. A data lake is a centralized, curated, and secured repository
   that stores all your data, both in its original form and prepared for analysis. A data lake
   enables you to break down data silos and combine different types of analytics to gain insights
   and guide better business decisions.

  However, setting up and managing data lakes today involves a lot of manual, complicated, and
   time-consuming tasks. This work includes loading data from diverse sources, monitoring those data
   flows, setting up partitions, turning on encryption and managing keys, defining transformation
   jobs and monitoring their operation, re-organizing data into a columnar format, configuring
   access control settings, deduplicating redundant data, matching linked records, granting access
   to data sets, and auditing access over time.

  Creating a data lake with Lake Formation is as simple as defining where your data resides and what
   data access and security policies you want to apply. Lake Formation then collects and catalogs data from
   databases and object storage, moves the data into your new Amazon S3 data lake, cleans and classifies
   data using ML algorithms, and secures access to your sensitive data. Your users can then access a
   centralized catalog of data which describes available data sets and their appropriate usage. Your
   users then leverage these data sets with their choice of analytics and ML services, such as Amazon EMR
   for Apache Spark, Amazon Redshift, Amazon Athena, SageMaker AI, and Amazon QuickSuite.

