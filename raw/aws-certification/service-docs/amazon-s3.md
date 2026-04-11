# Amazon S3
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Simple Storage Service (Amazon S3) is an object storage service that offers
   industry-leading scalability, data availability, security, and performance. This means customers
   of all sizes and industries can use it to store and protect any amount of data for a range of use
   cases, such as websites, mobile applications, backup and restore, archive, enterprise
   applications, IoT devices, and big data analytics. Amazon S3 provides easy-to-use management features
   so you can organize your data and configure finely-tuned access controls to meet your specific
   business, organizational, and compliance requirements. Amazon S3 is designed for 99.999999999% (11
   9s) of durability, and stores data for millions of applications for companies all around the
   world.

  Amazon S3 storage classes are a range of storage classes that you can choose from based on the data access, resiliency, and cost requirements of your workloads. S3 storage classes are purpose-built to provide the lowest cost storage for different access patterns. S3 storage classes are ideal for virtually any use case, including those with demanding performance needs, data residency requirements, unknown or changing access patterns, or archival storage.

  The S3 storage classes include:

  -
      S3 Intelligent-Tiering for automatic cost savings for
      data with unknown or changing access patterns

-
      S3 Standard for frequently accessed data

-
      S3 Express One Zone for your most frequently accessed
     data

-
      S3 Standard-Infrequent Access (S3 Standard-IA) and
    S3 One Zone-Infrequent Access (S3 One Zone-IA) for less
    frequently accessed data

-
      S3 Glacier Instant Retrieval for archive data that needs
     immediate access

-
      S3 Glacier Flexible Retrieval  (formerly Amazon Glacier) for rarely
     accessed long-term data that does not require immediate access

-
      Amazon Glacier Deep Archive (Amazon Glacier Deep Archive) for long-term
     archive and digital preservation with retrieval in hours at the lowest cost storage in the
     cloud

  If you have data residency requirements that can't be met by an existing AWS Region, you
   can use the S3 Outposts storage class to store your S3 data on
   premises. Amazon S3 also offers capabilities to manage your data throughout its lifecycle. Once an S3
   Lifecycle policy is set, your data will automatically transfer to a different storage class
   without any changes to your application. For more information, refer to the Amazon S3 storage classes overview info
    graphic.

  You can use S3 Object
    Lock to help prevent S3 objects from being deleted or overwritten for a fixed amount of
   time, or indefinitely. Object Lock can help you to meet regulatory requirements that require WORM
   (write-once-read-many) storage, or to simply add another layer of protection against object
   changes or deletion.

