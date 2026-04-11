# Amazon ElastiCache
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/database.html
> Collected: 2026-04-09
> Published: Unknown

Amazon ElastiCache is a web service that makes it easy
   to deploy, operate, and scale an in-memory cache in the cloud. The service improves the
   performance of web applications by allowing you to retrieve information from fast, managed,
   in-memory caches, instead of relying entirely on slower disk-based databases.

   ElastiCache supports two open-source in-memory caching engines:

  -
      Redis - a fast, open-source, in-memory key-value
     data store for use as a database, cache, message broker, and queue. Amazon ElastiCache (Redis OSS) is a Redis-compatible in-memory service that
     delivers the ease-of-use and power of Redis along with the availability, reliability, and
     performance suitable for the most demanding applications. Both single-node and up to 15-shard
     clusters are available, enabling scalability to up to 3.55 TiB of in-memory data. Amazon ElastiCache (Redis OSS) is
     fully managed, scalable, and secure. This makes it an ideal candidate to power high-performance
     use cases such as web, mobile apps, gaming, ad-tech, and IoT.

-
      Memcached - a widely adopted memory object
     caching system. Amazon ElastiCache (Memcached) is
     protocol compliant with Memcached, so popular tools that you use today with existing Memcached
     environments will work seamlessly with the service.

  Amazon ElastiCache Serverless is a serverless option for Amazon ElastiCache that simplifies cache management
   and instantly scales to support the most demanding applications. With ElastiCache Serverless, you can
   create a highly available and scalable cache in less than a minute, eliminating the need to plan
   for, provision, and manage cache cluster capacity. ElastiCache Serverless automatically stores data
   redundantly across multiple Availability Zones (AZs) and provides a 99.99% availability Service Level Agreement (SLA). With ElastiCache
   Serverless, you pay for data stored and compute consumed by your workload, with no upfront
   commitments or additional costs.

