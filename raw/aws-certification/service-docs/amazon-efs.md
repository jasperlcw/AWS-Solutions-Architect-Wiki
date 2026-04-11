# Amazon EFS
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Elastic File System (Amazon EFS) provides a simple, scalable, elastic
   file system for Linux-based workloads for use with AWS Cloud services and on-premises
   resources. It is built to scale on demand to petabytes without disrupting applications, growing
   and shrinking automatically as you add and remove files, so your applications have the storage
   they need - when they need it. It is designed to provide massively parallel shared access to
   thousands of Amazon EC2 instances, enabling your applications to achieve high levels of aggregate
   throughput and IOPS with consistent low latencies. Amazon EFS is a fully managed service that requires
   no changes to your existing applications and tools, providing access through a standard file
   system interface for seamless integration. Amazon EFS is a regional service storing data within and
   across multiple Availability Zones (AZs) for high availability and durability. You can access
   your file systems across Availability Zones and AWS Regions and share files between thousands
   of Amazon EC2 instances and on-premises servers via Direct Connect or Site-to-Site VPN.

   Amazon EFS is well suited to support a broad spectrum of use cases from highly parallelized,
   scale-out workloads that require the highest possible throughput to single-threaded,
   latency-sensitive workloads. Use cases such as lift-and-shift enterprise applications, big data
   analytics, web serving and content management, application development and testing, media and
   entertainment workflows, database backups, and container storage.

  For long-lived data that is accessed only a few times a year or less, consider Amazon EFS
   Archive, a cost-effective way to retain even your coldest data so that it's always available to
   power new business insights. Amazon EFS Archive supports the same intelligent tiering experience as
   existing EFS storage classes. This means that you can combine the sub-millisecond SSD latencies
   of Amazon EFS Standard for your active frequently-accessed data with the lower costs of Amazon EFS IA and
   Amazon EFS Archive for your colder data.

