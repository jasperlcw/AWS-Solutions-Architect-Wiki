# AWS DataSync
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/migration-services.html
> Collected: 2026-04-09
> Published: Unknown

AWS DataSync is a data transfer service that makes
   it easy for you to automate moving data between on-premises storage and Amazon S3 or Amazon Elastic File System
   (Amazon EFS). DataSync automatically handles many of the tasks related to data transfers that can slow
   down migrations or burden your IT operations, including running your own instances, handling
   encryption, managing scripts, network optimization, and data integrity validation. You can use
   DataSync to transfer data at speeds up to 10 times faster than open-source tools. DataSync uses
   an on-premises software agent to connect to your existing storage or file systems using the
   Network File System (NFS) protocol, so you don't have write scripts or modify your applications
   to work with AWS APIs. You can use DataSync to copy data over Direct Connect or internet links to AWS.
   The service enables one-time data migrations, recurring data processing workflows, and automated
   replication for data protection and recovery. Getting started with DataSync is easy: Deploy the
   DataSync agent on premises, connect it to a file system or storage array, select Amazon EFS or Amazon S3 as
   your AWS storage, and start moving data. You pay only for the data you copy.

