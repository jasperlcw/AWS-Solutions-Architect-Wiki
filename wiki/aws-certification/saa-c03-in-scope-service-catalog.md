# SAA-C03 In-Scope Service Catalog
> Sources: User request, 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09; AWS Documentation (Service Mentions), 2026-04-09; AWS Documentation (Technologies and Concepts), 2026-04-09; AWS Documentation (Per-Service Docs Corpus), 2026-04-09
> Raw: [User-requested SAA-C03 in-scope services](../../raw/aws-certification/2026-04-09-user-requested-saa-c03-in-scope-services.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md); [Service Mentions](../../raw/aws-certification/2026-04-09-saa-c03-service-mentions.md); [Technologies and Concepts](../../raw/aws-certification/2026-04-09-saa-c03-technologies-and-concepts.md); [Amazon Athena](amazon-athena.md); [Amazon EC2](amazon-ec2.md); [Amazon RDS](amazon-rds.md); [Amazon VPC](amazon-vpc.md); [IAM](iam.md); [AWS Lambda](aws-lambda.md); [Amazon S3](amazon-s3.md)
> Updated: 2026-04-09

## Overview

This page is a docs-backed recognition catalog for the AWS services the user asked to track for SAA-C03 study. It now synthesizes AWS's exam scope pages with a per-service raw corpus built from official AWS documentation, so the page can function as both a memorization index and a service-selection aid.

Official AWS-doc-backed per-service raw source files for this catalog live under `raw/aws-certification/service-docs/`.

The most useful study move is to read these services as decision points rather than flashcards. SAA-C03 questions usually reward distinguishing between services that sound adjacent but solve different architecture problems: Athena vs Redshift, ECS vs EKS, Aurora vs DynamoDB, Direct Connect vs Site-to-Site VPN, WAF vs Shield vs Network Firewall, and Budgets vs Cost Explorer vs Cost and Usage Report.

## How To Use This Page

- Start with the category that matches the main requirement in the prompt: compute, storage, database, analytics, networking, security, migration, governance, or cost.
- Narrow by operating model: serverless, managed platform, managed cluster, or customer-managed infrastructure.
- Narrow again by workload shape: transactional, analytical, streaming, edge, hybrid, archival, identity, observability, or migration.
- Use the existing specialized wiki pages for deeper study in the highest-yield domains, especially analytics, security, and application integration.

## Analytics

Analytics services are easiest to remember as an end-to-end flow: ingest, govern, process, query, warehouse, search, and visualize.

- Amazon Athena: Serverless SQL queries over data in Amazon S3, especially logs and data lakes.
- AWS Data Exchange: Third-party dataset subscription and delivery service when a design needs external commercial or public data.
- Amazon Data Firehose: Low-operations streaming delivery into destinations such as S3, Redshift, and OpenSearch.
- Amazon EMR: Managed Hadoop and Spark platform when analytics processing needs more framework control than serverless ETL.
- AWS Glue: Serverless ETL, crawlers, and cataloging for data lake and warehouse pipelines.
- Amazon Kinesis: Real-time data streaming and ingestion for event, telemetry, and clickstream workloads.
- AWS Lake Formation: Governance, permissions, and setup layer for S3-based data lakes.
- Amazon Managed Streaming for Apache Kafka (Amazon MSK): Managed Kafka for teams that want Kafka compatibility without self-managing brokers.
- Amazon OpenSearch Service: Search, log analytics, and near-real-time exploratory analysis.
- Amazon QuickSuite: Business intelligence and dashboards over analytics data sources; older study material may still frame this as QuickSight-style BI.
- Amazon Redshift: Managed data warehouse for structured analytics and BI workloads at scale.

Useful distinctions:

- Athena vs Redshift: Athena is query-in-place over S3; Redshift is the warehouse when the question implies modeled analytics, repeated BI, or large-scale structured reporting.
- Glue vs EMR: Glue is the lower-operations ETL default; EMR is the higher-control big-data option.
- Kinesis vs Data Firehose vs MSK: Kinesis is general streaming, Firehose is managed delivery, and MSK is for Kafka compatibility.
- Lake Formation belongs with governance, not raw processing.

## AWS Cost Management

These services answer different cost questions rather than overlapping with each other.

- AWS Budgets: Cost and usage guardrails with thresholds and alerts.
- AWS Cost and Usage Report: Detailed billing and usage export for deep analysis and chargeback.
- AWS Cost Explorer: Interactive cost trend analysis and usage breakdowns.
- Savings Plans: Flexible discounted pricing model for steady compute usage.

Useful distinctions:

- Budgets = alerts and guardrails.
- Cost Explorer = interactive analysis and forecasting.
- Cost and Usage Report = the detailed raw billing dataset.
- Savings Plans = pricing commitment mechanism, not a reporting tool.

## Compute

Compute questions usually hinge on how much infrastructure control the architecture needs.

- AWS Batch: Managed batch job scheduling and compute provisioning.
- Amazon EC2: General-purpose virtual machines with the most direct control over instance type, storage, and networking.
- Amazon EC2 Auto Scaling: Automatic scale-out and scale-in for EC2 fleets based on demand or schedules.
- AWS Elastic Beanstalk: Platform service that deploys application code onto managed infrastructure with less operational work than raw EC2.
- AWS Outposts: AWS-managed hardware in customer sites for hybrid architectures that need local processing with AWS APIs.
- AWS Serverless Application Repository: Catalog of packaged serverless applications and components for reuse.
- VMware Cloud on AWS: VMware-based software-defined data center running on AWS infrastructure for migration or hybrid continuity.
- AWS Wavelength: Mobile edge compute in telecom networks for ultra-low-latency applications.

Useful distinctions:

- EC2 is the direct-control baseline.
- Elastic Beanstalk reduces application deployment overhead on top of managed infrastructure.
- Batch is for queued batch jobs, not long-running interactive applications.
- Outposts, VMware Cloud on AWS, and Wavelength are hybrid or edge choices rather than default cloud-first answers.

## Containers

Container questions are usually about orchestration model and environment compatibility.

- Amazon ECR: Container image registry for storing and distributing Docker and OCI images.
- Amazon ECS: AWS-native container orchestration service.
- Amazon ECS Anywhere: Run ECS-managed containers on customer-managed infrastructure outside AWS.
- Amazon EKS: Managed Kubernetes control plane on AWS.
- Amazon EKS Anywhere: Run EKS-compatible Kubernetes on on-premises infrastructure.
- Amazon EKS Distro: Open-source Kubernetes distribution aligned with EKS.

Useful distinctions:

- ECS is the AWS-native orchestrator; EKS is the Kubernetes-native orchestrator.
- ECR is the image registry, not the runtime.
- ECS Anywhere and EKS Anywhere are hybrid extensions.
- EKS Distro is the distribution layer, not the managed control plane itself.

## Database

Database service choice is one of the most common SAA-C03 pattern tests.

- Amazon Aurora: Managed relational database engine compatible with MySQL or PostgreSQL, optimized for cloud scale and availability.
- Amazon Aurora Serverless: On-demand Aurora capacity model for variable or intermittent relational workloads.
- Amazon DocumentDB: Managed document database with MongoDB compatibility.
- Amazon DynamoDB: Fully managed key-value and document database for low-latency, high-scale access patterns.
- Amazon ElastiCache: Managed in-memory caching layer, commonly with Redis or Memcached.
- Amazon Keyspaces: Managed Apache Cassandra-compatible wide-column database service.
- Amazon Neptune: Managed graph database for relationship-heavy queries.
- Amazon RDS: Managed relational database family for engines such as MySQL, PostgreSQL, MariaDB, Oracle, and SQL Server.
- Amazon Redshift: Managed analytical warehouse rather than an OLTP application database.

Useful distinctions:

- Aurora and RDS are relational; DynamoDB is key-value/document; DocumentDB is document; Keyspaces is wide-column; Neptune is graph; Redshift is analytical.
- Aurora Serverless is a capacity model for Aurora, not a separate database family.
- ElastiCache is a performance layer, not the system of record.

## Developer Tools

- AWS X-Ray: Distributed tracing and request-path visibility across application components.

## Front-End Web And Mobile

- AWS Amplify: Front-end hosting and developer tooling for web and mobile applications.
- Amazon API Gateway: Managed API front door for REST, HTTP, and WebSocket endpoints.
- AWS Device Farm: Managed testing on real mobile devices and browsers.

Useful distinctions:

- Amplify is the front-end developer platform.
- API Gateway is the API entry layer.
- Device Farm is testing infrastructure.

## Machine Learning

These are usually lower-yield than core architecture services, but AWS keeps them in scope as recognition items.

- Amazon Comprehend: Natural language processing for sentiment, entities, and text classification.
- Amazon Kendra: Intelligent enterprise search over indexed content.
- Amazon Lex: Conversational chatbot and voice interface service.
- Amazon Polly: Text-to-speech synthesis.
- Amazon Rekognition: Image and video analysis for labels, faces, and moderation use cases.
- Amazon SageMaker AI: Managed machine learning platform for building, training, and deploying models.
- Amazon Textract: OCR plus structured extraction from documents.
- Amazon Transcribe: Speech-to-text transcription.
- Amazon Translate: Neural machine translation service.

Exam lens:

- Treat these as capability-recognition services.
- Unless the prompt clearly centers on ML features, SAA-C03 usually cares more about how they fit into a wider architecture than about model details.

## Management And Governance

This category is broad, but the exam repeatedly uses it to test visibility, control, and multi-account operations.

- AWS Auto Scaling: Cross-service scaling coordination beyond only EC2 Auto Scaling groups.
- AWS CLI: Command-line interface for scripting and operating AWS resources.
- AWS CloudFormation: Infrastructure as code for repeatable AWS provisioning.
- AWS CloudTrail: Audit trail of AWS API activity and account events.
- Amazon CloudWatch: Metrics, logs, alarms, dashboards, and operational observability.
- AWS Compute Optimizer: Rightsizing recommendations for compute resources.
- AWS Config: Configuration history, compliance evaluation, and drift visibility for AWS resources.
- AWS Control Tower: Multi-account landing zone and guardrail setup.
- AWS Health Dashboard: Service events and account-specific health notifications.
- AWS License Manager: Track and govern software licenses in AWS environments.
- Amazon Managed Grafana: Managed Grafana workspaces for dashboards and observability visualization.
- Amazon Managed Service for Prometheus: Managed Prometheus-compatible metrics storage and querying.
- AWS Management Console: Browser-based AWS administration interface.
- AWS Organizations: Multi-account governance and consolidated billing.
- AWS Service Catalog: Controlled portfolio of approved products for self-service deployment.
- AWS Systems Manager: Operations hub for patching, session access, automation, inventory, and parameter management.
- AWS Trusted Advisor: Best-practice checks for cost, performance, resilience, limits, and security.
- AWS Well-Architected Tool: Structured review workflow against the Well-Architected pillars.

Useful distinctions:

- CloudFormation provisions infrastructure; Config records and evaluates configuration state; CloudTrail records API activity; CloudWatch handles metrics, logs, and alarms.
- Organizations and Control Tower are multi-account governance building blocks.
- Systems Manager is the operations toolbox.
- Trusted Advisor and Compute Optimizer both suggest improvements, but Trusted Advisor is broad best-practice guidance while Compute Optimizer is rightsizing focused.

## Media Services

- Amazon Elastic Transcoder: Managed media transcoding service for converting video formats.
- Amazon Kinesis Video Streams: Video ingestion and streaming storage for analytics, ML, or playback pipelines.

## Migration And Transfer

Migration services differ mainly by what is moving and whether the transfer is online or offline.

- AWS Application Migration Service: Lift-and-shift replication and migration of existing servers into AWS.
- AWS DataSync: Accelerated online transfer between on-premises storage and AWS storage services.
- AWS DMS: Database migration and ongoing replication with minimal downtime.
- AWS Snow Family: Physical edge and transfer devices for offline migration, rugged edge processing, or disconnected environments.
- AWS Transfer Family: Managed SFTP, FTPS, FTP, and AS2 endpoints backed by AWS storage services.

Useful distinctions:

- Application Migration Service = servers.
- DMS = databases.
- DataSync = online storage transfer.
- Snow Family = offline or edge transfer.
- Transfer Family = managed file-transfer protocols.

## Networking And Content Delivery

Networking questions usually test connectivity type, traffic entry point, routing scope, and private versus public access.

- AWS Client VPN: Managed client-based VPN access into AWS and on-premises networks.
- Amazon CloudFront: Global CDN for caching content close to users.
- AWS Direct Connect: Dedicated private network link from on-premises environments to AWS.
- Elastic Load Balancing (ELB): Traffic distribution across targets, including application, network, and gateway load balancing patterns.
- AWS Global Accelerator: Anycast static IP entry point that routes users to optimal regional endpoints.
- AWS PrivateLink: Private service access over AWS networking without traversing the public internet.
- Amazon Route 53: DNS, routing policies, and domain registration.
- AWS Site-to-Site VPN: IPsec VPN connectivity between AWS and on-premises networks.
- AWS Transit Gateway: Central hub for connecting multiple VPCs and on-premises networks.
- Amazon VPC: Core logically isolated networking boundary for subnets, routing, and security controls.

Useful distinctions:

- CloudFront is caching and edge delivery; Global Accelerator is global routing to optimal endpoints.
- Direct Connect is dedicated private connectivity; Site-to-Site VPN is encrypted internet-based connectivity.
- PrivateLink is private service consumption; Transit Gateway is multi-network hub routing.
- ELB distributes traffic across targets; Route 53 resolves and routes DNS requests.

## Security, Identity, And Compliance

Security services are frequently tested by asking whether the requirement is identity, key management, prevention, detection, investigation, governance, or secrets handling.

- AWS Artifact: AWS compliance reports and legal agreement access.
- AWS Audit Manager: Evidence collection and control mapping for audits.
- AWS Certificate Manager (ACM): Managed provisioning and renewal of public and private TLS certificates.
- AWS CloudHSM: Dedicated hardware security modules for customer-controlled cryptographic operations.
- Amazon Cognito: Identity service for application users, sign-in, and federation.
- Amazon Detective: Investigation service that helps analyze security findings and relationships.
- AWS Directory Service: Managed Microsoft Active Directory and directory integration options.
- AWS Firewall Manager: Centralized policy management for WAF, Shield, and firewall controls.
- Amazon GuardDuty: Threat detection using AWS telemetry, findings, and anomaly analysis.
- AWS IAM Identity Center: Workforce SSO and permission management across AWS accounts and applications.
- Amazon Inspector: Vulnerability assessment for compute workloads and software exposure.
- AWS KMS: Managed encryption keys and cryptographic control plane for AWS services and applications.
- Amazon Macie: Sensitive data discovery and protection insights focused on Amazon S3.
- AWS Network Firewall: Managed stateful inspection and filtering inside VPC architectures.
- AWS Resource Access Manager (AWS RAM): Share supported AWS resources across accounts and organizations.
- AWS Secrets Manager: Secure storage and rotation for application secrets.
- AWS Security Hub: Central aggregation of security findings and posture signals.
- AWS Shield: Managed DDoS protection.
- AWS WAF: Application-layer request filtering for exploits and abusive traffic.
- IAM: Core identity and access management for AWS users, roles, groups, and policies.

Useful distinctions:

- IAM and IAM Identity Center solve different identity problems: account-level access control versus workforce access across accounts and apps.
- KMS, CloudHSM, and Secrets Manager are often confused; think keys, hardware-backed key control, and secrets storage/rotation.
- WAF, Shield, and Network Firewall protect at different layers.
- GuardDuty detects threats, Inspector finds vulnerabilities, Macie identifies sensitive S3 data exposure, Detective helps investigate findings, and Security Hub aggregates posture and findings.

## Serverless

Serverless services remove infrastructure management, but they still solve very different runtime and API problems.

- AWS AppSync: Managed GraphQL API service with real-time and offline-oriented integration patterns.
- AWS Fargate: Serverless compute engine for ECS and EKS containers.
- AWS Lambda: Event-driven functions without server management.

Useful distinctions:

- Lambda is function-level compute.
- Fargate is container compute without managing servers.
- AppSync is the managed GraphQL interaction layer rather than general compute.

## Storage

Storage questions often reduce to object, block, file, archive, or hybrid patterns.

- AWS Backup: Centralized backup policy and recovery management across supported AWS services.
- Amazon EBS: Block storage for EC2 instances.
- Amazon EFS: Managed elastic NFS file system for shared Linux workloads.
- Amazon FSx (for all types): Managed file systems for specialized workloads such as Windows, Lustre, NetApp ONTAP, and OpenZFS.
- Amazon S3: Durable object storage and the default building block for data lakes, backups, static assets, and archival workflows.
- Amazon S3 Glacier: Low-cost archival storage classes for long-retention data.
- AWS Storage Gateway: Hybrid storage bridge between on-premises environments and AWS storage services.

Useful distinctions:

- S3 = object storage, EBS = block storage, EFS and FSx = file storage.
- Glacier belongs to the archive end of the S3 storage-class spectrum.
- Storage Gateway is a hybrid bridge, not just another cloud-native storage service.

## Exam Heuristics

- Prefer service-recognition thinking first: identify whether the question is really about compute, storage, analytics, security, migration, or governance.
- Distinguish control level: managed serverless options usually reduce operations, while cluster or VM-based options trade more control for more responsibility.
- Separate transactional systems from analytics systems: RDS, Aurora, and DynamoDB solve different problems than Athena, Redshift, EMR, and OpenSearch.
- Use the service names as architecture signals: many SAA-C03 questions are solvable by mapping requirement words such as "trace," "archive," "stream," "federate," "share across accounts," or "low-latency edge" to the right AWS service family.
- Watch for hybrid and edge distractors: Outposts, VMware Cloud on AWS, Wavelength, ECS Anywhere, EKS Anywhere, Client VPN, Direct Connect, Transit Gateway, and Storage Gateway tend to appear when AWS wants you to notice on-premises integration or location constraints.
- When multiple services could work, the exam usually favors the least-operations answer that still satisfies the requirement.

## See Also

- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
- [SAA-C03 Compute And Containers Services](saa-c03-compute-and-containers-services.md)
- [SAA-C03 Database Services](saa-c03-database-services.md)
- [SAA-C03 Networking And Content Delivery Services](saa-c03-networking-and-content-delivery-services.md)
- [SAA-C03 Storage Services](saa-c03-storage-services.md)
- [SAA-C03 Management And Governance Services](saa-c03-management-and-governance-services.md)
- [SAA-C03 Migration And Transfer Services](saa-c03-migration-and-transfer-services.md)
- [SAA-C03 Cost Management Services](saa-c03-cost-management-services.md)
- [SAA-C03 Serverless And Front-End Services](saa-c03-serverless-and-front-end-services.md)
- [SAA-C03 Machine Learning And Media Services](saa-c03-machine-learning-and-media-services.md)
- [AWS Analytics Cheat Sheet](aws-analytics-cheat-sheet.md)
- [SAA-C03 Analytics Tools](saa-c03-analytics-tools.md)
- [AWS SAA-C03 Security Services](aws-saa-c03-security-services.md)
