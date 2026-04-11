# What is Amazon S3?
> Source: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance. Customers of all sizes and industries can use Amazon S3 to store and protect any amount of data for a range of use cases, such as data lakes, websites, mobile applications, backup and restore, archive, enterprise applications, IoT devices, and big data analytics.

Amazon S3 provides management features so that you can optimize, organize, and configure access to your data to meet your specific business, organizational, and compliance requirements.

For more information about using the Amazon S3 Express One Zone storage class with directory buckets, see S3 Express One Zone and Working with directory buckets.

## Features of Amazon S3

### Storage classes

Amazon S3 offers a range of storage classes designed for different use cases. For example, you can store mission-critical production data in S3 Standard or S3 Express One Zone for frequent access, save costs by storing infrequently accessed data in S3 Standard-IA or S3 One Zone-IA, and archive data at the lowest costs in S3 Glacier Instant Retrieval, S3 Glacier Flexible Retrieval, and S3 Glacier Deep Archive.

Amazon S3 Express One Zone is a high-performance, single-zone Amazon S3 storage class that is purpose-built to deliver consistent, single-digit millisecond data access for your most latency-sensitive applications. S3 Express One Zone is the lowest latency cloud object storage class available today, with data access speeds up to 10x faster and with request costs 50 percent lower than S3 Standard.

S3 Express One Zone is the first S3 storage class where you can select a single Availability Zone with the option to co-locate your object storage with your compute resources, which provides the highest possible access speed. Additionally, to further increase access speed and support hundreds of thousands of requests per second, data is stored in a new bucket type: an Amazon S3 directory bucket.

You can store data with changing or unknown access patterns in S3 Intelligent-Tiering, which optimizes storage costs by automatically moving your data between four access tiers when your access patterns change. These four access tiers include two low-latency access tiers optimized for frequent and infrequent access, and two opt-in archive access tiers designed for asynchronous access for rarely accessed data.

### Storage management

Amazon S3 has storage management features that you can use to manage costs, meet regulatory requirements, reduce latency, and save multiple distinct copies of your data for compliance requirements.

- S3 Lifecycle: Configure a lifecycle configuration to manage your objects and store them cost effectively throughout their lifecycle. You can transition objects to other S3 storage classes or expire objects that reach the end of their lifetimes.
- S3 Object Lock: Prevent Amazon S3 objects from being deleted or overwritten for a fixed amount of time or indefinitely. You can use Object Lock to help meet regulatory requirements that require write-once-read-many (WORM) storage or to simply add another layer of protection against object changes and deletions.
- S3 Replication: Replicate objects and their respective metadata and object tags to one or more destination buckets in the same or different AWS Regions for reduced latency, compliance, security, and other use cases.
- S3 Batch Operations: Manage billions of objects at scale with a single S3 API request or a few clicks in the Amazon S3 console. You can use Batch Operations to perform operations such as Copy, Invoke AWS Lambda function, and Restore on millions or billions of objects.

### Access management and security

Amazon S3 provides features for auditing and managing access to your buckets and objects. By default, S3 buckets and the objects in them are private. You have access only to the S3 resources that you create.

- S3 Block Public Access: Block public access to S3 buckets and objects. By default, Block Public Access settings are turned on at the bucket level. We recommend that you keep all Block Public Access settings enabled unless you know that you need to turn off one or more of them for your specific use case.
- AWS Identity and Access Management (IAM): IAM helps you securely control access to AWS resources, including your Amazon S3 resources.
- Bucket policies: Use IAM-based policy language to configure resource-based permissions for your S3 buckets and the objects in them.
- Amazon S3 access points: Configure named network endpoints with dedicated access policies to manage data access at scale for shared datasets in Amazon S3.
- Access control lists (ACLs): Grant read and write permissions for individual buckets and objects to authorized users. The guide recommends using bucket policies, access point policies, or IAM user policies instead of ACLs for most cases.
- S3 Object Ownership: Take ownership of every object in your bucket, simplifying access management for data stored in Amazon S3. By default, ACLs are disabled.
- IAM Access Analyzer for S3: Evaluate and monitor your S3 bucket access policies, ensuring that the policies provide only the intended access.

### Data processing

- S3 Object Lambda: Add your own code to S3 GET, HEAD, and LIST requests to modify and process data as it is returned to an application.
- Event notifications: Trigger workflows that use Amazon SNS, Amazon SQS, and AWS Lambda when a change is made to your S3 resources.

### Storage logging and monitoring

Amazon S3 provides logging and monitoring tools that you can use to monitor and control how your Amazon S3 resources are being used.

- Amazon CloudWatch metrics for Amazon S3
- AWS CloudTrail
- Server access logging
- AWS Trusted Advisor

### Analytics and insights

- Amazon S3 Storage Lens
- Storage Class Analysis
- S3 Inventory with Inventory reports

### Strong consistency

Amazon S3 provides strong read-after-write consistency for PUT and DELETE requests of objects in your Amazon S3 bucket in all AWS Regions. This behavior applies to both writes of new objects as well as PUT requests that overwrite existing objects and DELETE requests. In addition, read operations on Amazon S3 Select, Amazon S3 access control lists (ACLs), Amazon S3 Object Tags, and object metadata are strongly consistent.

## How Amazon S3 works

Amazon S3 is an object storage service that stores data as objects, hierarchical data, or tabular data within buckets. An object is a file and any metadata that describes the file. A bucket is a container for objects.

To store your data in Amazon S3, you first create a bucket and specify a bucket name and AWS Region. Then, you upload your data to that bucket as objects in Amazon S3. Each object has a key (or key name), which is the unique identifier for the object within the bucket.

S3 provides features that you can configure to support your specific use case. For example, you can use S3 Versioning to keep multiple versions of an object in the same bucket, which allows you to restore objects that are accidentally deleted or overwritten.

Buckets and the objects in them are private and can be accessed only if you explicitly grant access permissions. You can use bucket policies, IAM policies, access control lists (ACLs), and S3 Access Points to manage access.

### Buckets

Amazon S3 supports four types of buckets: general purpose buckets, directory buckets, table buckets, and vector buckets. Each type of bucket provides a unique set of features for different use cases.

General purpose buckets are recommended for most use cases and access patterns and are the original S3 bucket type. You can store any number of objects in a bucket and across all storage classes except for S3 Express One Zone, so you can redundantly store objects across multiple Availability Zones.

By default, general purpose buckets exist in a global namespace, which means that each bucket name must be unique across all AWS accounts in all the AWS Regions within a partition. When you create a bucket, you choose the AWS Region where the bucket will reside, and you cannot later change the bucket name or Region.

By default, all general purpose buckets are private. However, you can grant public access to general purpose buckets.

Directory buckets are recommended for low-latency use cases and data-residency use cases. Directory buckets organize objects into hierarchical directories (prefixes) instead of the flat storage structure of general purpose buckets.

For low-latency use cases, you can create a directory bucket in a single AWS Availability Zone to store data. Directory buckets in Availability Zones support the S3 Express One Zone storage class. For data-residency use cases, you can create a directory bucket in a single AWS Dedicated Local Zone (DLZ). Directory buckets have all public access disabled by default, and this behavior cannot be changed.

Table buckets are recommended for storing tabular data such as daily purchase transactions, streaming sensor data, or ad impressions. S3 Tables are purpose-built for storing tabular data in the Apache Iceberg format and can be queried with services such as Athena, Redshift, and Spark.

Vector buckets are purpose-built to store and query vectors. They support vector embeddings, similarity search, and integration patterns with services like Amazon Bedrock and Amazon OpenSearch.

### Objects

Objects are the fundamental entities stored in Amazon S3. Objects consist of object data and metadata. Every object is contained in a bucket.

### Keys

An object key is the unique identifier for an object within a bucket. The combination of bucket, object key, and optionally version ID uniquely identifies an object.

### S3 Versioning and version IDs

You can use S3 Versioning to keep multiple variants of an object in the same bucket. With S3 Versioning, you can preserve, retrieve, and restore every version of every object stored in your buckets.

When you enable S3 Versioning in a bucket, Amazon S3 generates a unique version ID for each object added to the bucket. Objects that already existed in the bucket at the time that you enable versioning have a version ID of `null`.

### Bucket policy

A bucket policy is a resource-based IAM policy that you can use to grant access permissions to your bucket and the objects in it. Bucket policies allow or deny requests based on the requester, S3 actions, resources, and conditions of the request.

### S3 access points

Amazon S3 access points are named network endpoints with dedicated access policies that describe how data can be accessed using that endpoint. Access points simplify managing data access at scale for shared datasets in Amazon S3 and can be restricted to a VPC.

### Access control lists (ACLs)

ACLs are an older access control mechanism that predates IAM. The guide recommends keeping ACLs disabled for most modern use cases and using policies instead. With Object Ownership set to bucket owner enforced, the bucket owner owns all objects in the bucket and manages access with policies.

### Regions

You can choose the AWS Region where Amazon S3 stores the buckets that you create. You might choose a Region to optimize latency, minimize costs, or address regulatory requirements. Objects stored in a Region never leave the Region unless you explicitly transfer or replicate them.

## Amazon S3 data consistency model

Amazon S3 provides strong read-after-write consistency for PUT and DELETE requests of objects in all AWS Regions. Updates to a single key are atomic.

Amazon S3 does not support object locking for concurrent writers. If two PUT requests are simultaneously made to the same key, the request with the latest timestamp wins. Updates are key-based, so there is no way to make atomic updates across keys without designing that behavior in your application.

Bucket configurations have an eventual consistency model. For example, a deleted bucket might still appear briefly in a bucket listing, and AWS recommends waiting 15 minutes after first enabling versioning before issuing write operations on objects in that bucket.

## Related services

After you load data into Amazon S3, you can use it with other AWS services, including Amazon EC2, Amazon EMR, AWS Snow Family, and AWS Transfer Family.

## Accessing Amazon S3

You can work with Amazon S3 through the AWS Management Console, the AWS CLI, AWS SDKs, or the Amazon S3 REST API.

If you make direct REST API calls in your application, you must write the code to compute the signature and add it to the request. SOAP API support over HTTP is deprecated; AWS recommends using the REST API or the AWS SDKs.

## Paying for Amazon S3

Amazon S3 charges you only for what you actually use, with no hidden fees and no overage charges.

## PCI DSS compliance

Amazon S3 supports the processing, storage, and transmission of credit card data by a merchant or service provider and has been validated as being compliant with PCI DSS.
