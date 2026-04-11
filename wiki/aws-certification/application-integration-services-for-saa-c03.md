# Application Integration Services For SAA-C03
> Sources: AWS Documentation (Amazon AppFlow), 2026-04-09; AWS Documentation (AWS AppSync), 2026-04-09; AWS Documentation (Amazon EventBridge), 2026-04-09; AWS Documentation (Amazon MQ), 2026-04-09; AWS Documentation (Amazon SNS), 2026-04-09; AWS Documentation (Amazon SQS), 2026-04-09; AWS Documentation, Unknown; AWS Documentation (AWS Step Functions), 2026-04-09; AWS Documentation (Exam Guide - In-Scope Services), 2026-04-09
> Raw: [Amazon AppFlow](../../raw/aws-certification/2026-04-09-amazon-appflow-overview.md); [AWS AppSync](../../raw/aws-certification/2026-04-09-aws-appsync-overview.md); [Amazon EventBridge](../../raw/aws-certification/2026-04-09-amazon-eventbridge-overview.md); [Amazon MQ](../../raw/aws-certification/2026-04-09-amazon-mq-overview.md); [Amazon SNS](../../raw/aws-certification/2026-04-09-amazon-sns-overview.md); [Amazon SQS](../../raw/aws-certification/2026-04-09-amazon-sqs-overview.md); [What is Amazon SQS?](../../raw/aws-certification/2026-04-09-what-is-amazon-sqs.md); [AWS Step Functions](../../raw/aws-certification/2026-04-09-aws-step-functions-overview.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-09

## Overview

For SAA-C03, these services are best understood as tools for connecting systems in different ways: moving application data, exposing APIs, routing events, buffering work, orchestrating workflows, broadcasting notifications, or preserving compatibility with traditional brokers. The exam is more likely to test which integration pattern fits a requirement than deep implementation details.

## Quick Mental Model

- Amazon AppFlow: Move data between SaaS platforms and AWS services
- AWS AppSync: Expose a unified GraphQL or real-time API to applications
- Amazon EventBridge: Route events between producers and consumers
- Amazon MQ: Managed broker for legacy or protocol-based messaging
- Amazon SNS: Push one message to many subscribers
- Amazon SQS: Buffer and decouple work with queues
- AWS Step Functions: Coordinate multi-step workflows and service orchestration

## Service Overviews

### Amazon AppFlow

Amazon AppFlow is a managed data-integration service for moving data between SaaS systems and AWS destinations such as Amazon S3 and Amazon Redshift. From a system-design perspective, it is the right answer when the problem is scheduled or on-demand data movement, sync, or ingestion from business applications rather than application-to-application request handling.

Think of AppFlow as a low-code data pipe for SaaS-to-AWS movement. It is useful when the architecture needs secure transfer, scheduled synchronization, partitioned S3 output, Glue catalog integration, or private transfer with AWS PrivateLink.

### AWS AppSync

AWS AppSync is a managed GraphQL and real-time API service. From an SAA-C03 perspective, it fits architectures where clients need a single API layer over multiple data sources, selective data retrieval, or live updates to connected applications.

Think of AppSync as an application-facing aggregation layer. It is useful when mobile or web clients need one endpoint that can read from several backends, support subscriptions or pub/sub behavior, and enforce authorization close to the API.

### Amazon EventBridge

Amazon EventBridge is a serverless event router. It ingests events, optionally filters or transforms them, and sends them to targets. For system design, it is the default choice when you want loosely coupled, event-driven integration across AWS services, custom applications, and partner software.

Use EventBridge when the requirement is "when X happens, trigger Y and maybe Z too." Event buses are for many-to-many routing, while Pipes are for point-to-point source-to-target delivery with optional enrichment. Scheduler fits time-based triggering without managing cron infrastructure.

### Amazon MQ

Amazon MQ is a managed message broker for ActiveMQ and RabbitMQ. Its main architectural value is compatibility with existing broker-based systems and standard messaging protocols.

For SAA-C03, Amazon MQ is usually the answer when migration constraints matter more than cloud-native simplicity. If an existing workload depends on JMS, AMQP, MQTT, OpenWire, STOMP, or broker semantics, Amazon MQ lets you modernize operations without rewriting the messaging layer. For greenfield AWS-native systems, the exam will often prefer SQS, SNS, or EventBridge instead.

### Amazon SNS

Amazon SNS is a managed pub/sub service built around topics. Publishers send once, and SNS fans the message out to multiple subscribers such as SQS queues, Lambda functions, HTTP endpoints, email, or SMS.

Architecturally, SNS is the right fit when one event should notify or trigger multiple downstream consumers immediately. It is especially useful for fanout, alerts, notifications, and multi-subscriber event distribution. Pair SNS with SQS when subscribers need durability or asynchronous buffering.

### Amazon SQS

Amazon SQS is a managed queue for decoupling producers from consumers. It lets producers hand work off to a queue and lets consumers process that work independently, at their own pace. Visibility timeout, dead-letter queues, message retention, and the Standard-versus-FIFO distinction are core SAA-C03 clues.

From a system-design perspective, SQS is for buffering, load leveling, retry isolation, and reducing tight coupling between services. Standard queues maximize scale, while FIFO queues are for workloads that need ordered processing and stronger duplicate-control behavior. Dead-letter queues are important when you need to isolate poison messages.

### AWS Step Functions

AWS Step Functions is a workflow orchestration service that coordinates multi-step processes using state machines. It does not replace queues or topics; it coordinates decisions, branching, retries, parallelism, and service-to-service sequencing.

Use Step Functions when the architecture has explicit process flow, such as approval chains, ETL pipelines, job orchestration, compensating logic, or long-running business workflows. Standard workflows fit long-lived, auditable orchestration, while Express workflows fit high-volume, shorter-running flows.

## How To Choose Between Them

### SNS vs SQS

Choose SNS when the main need is fanout to multiple consumers. Choose SQS when the main need is durable buffering and decoupled asynchronous processing. Use both together when one event should reach multiple consumers and each consumer should process independently.

### EventBridge vs SNS

Choose EventBridge when the design needs event routing based on rules, patterns, or cross-service decoupling. Choose SNS when the design is mostly straightforward pub/sub fanout. EventBridge is broader as an event bus; SNS is simpler as a topic-based notifier.

### SQS vs Step Functions

Choose SQS when you need a queue. Choose Step Functions when you need orchestration logic. If the requirement includes retries, branches, waiting for callbacks, human approval, or explicit workflow state, Step Functions is a stronger fit.

### Amazon MQ vs SQS or SNS

Choose Amazon MQ when protocol compatibility or broker semantics are mandatory, especially for migrations. Choose SQS and SNS for new AWS-native systems that benefit from simpler, highly scalable managed messaging patterns.

### AppFlow vs EventBridge

Choose AppFlow for moving business data between SaaS systems and AWS data stores. Choose EventBridge for reacting to events and triggering downstream actions. AppFlow is data-transfer oriented; EventBridge is event-routing oriented.

### AppSync vs The Others

AppSync is client API infrastructure, not a queue or broker. Choose it when frontends need a unified GraphQL or real-time API. It can sit in front of other services, but it solves a different architectural problem.

## SAA-C03 Design Heuristics

- If the question emphasizes decoupling workers or smoothing traffic spikes, think SQS.
- If one producer must notify many consumers, think SNS.
- If services should react to events based on routing rules, think EventBridge.
- If the process has steps, branching, retries, waits, or human approval, think Step Functions.
- If the system must integrate with existing messaging protocols or broker-based applications, think Amazon MQ.
- If data must be moved from SaaS platforms into AWS analytics or storage services, think AppFlow.
- If mobile or web clients need a unified API and real-time updates, think AppSync.

## See Also

- [Amazon SQS](amazon-sqs.md)
- [AWS Lambda](aws-lambda.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
