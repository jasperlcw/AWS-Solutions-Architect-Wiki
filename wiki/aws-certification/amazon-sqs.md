# Amazon SQS
> Sources: AWS Documentation, Unknown; AWS Documentation (Amazon SQS), 2026-04-09
> Raw: [What is Amazon SQS?](../../raw/aws-certification/2026-04-09-what-is-amazon-sqs.md); [Amazon SQS](../../raw/aws-certification/2026-04-09-amazon-sqs-overview.md)
> Updated: 2026-04-09

## Overview

Amazon SQS is the default SAA-C03 answer for decoupling components with durable asynchronous queues. The exam usually tests whether a design needs buffering, load leveling, independent failure handling, dead-letter isolation, or ordered queue semantics rather than immediate fanout or broker compatibility.

## Core Exam Model

- SQS is a managed queue service for decoupling producers from consumers.
- Messages are stored durably across multiple servers.
- Consumers poll, process, and then delete messages.
- Visibility timeout controls how long a received message stays hidden while it is being processed.

## Queue Types And Delivery Semantics

- Standard queues are the high-scale default and use at-least-once delivery.
- FIFO queues are the ordered-processing clue and support exactly-once processing semantics as described by AWS.
- Dead-letter queues are the poison-message isolation clue.
- Retention period matters when producers and consumers can be disconnected for extended periods.

## Security, Scale, And Large-Message Patterns

- SQS supports server-side encryption with managed keys or customer-managed KMS keys.
- SQS scales without provisioning and is built for high concurrency.
- For messages larger than 1 MiB, the pattern is usually to store payloads in S3 and put pointers in SQS.

## Common SAA-C03 Comparisons

- SQS vs SNS: choose SQS for buffering and decoupled work processing; choose SNS for fanout to multiple subscribers.
- SQS vs EventBridge: choose SQS for queues and worker decoupling; choose EventBridge for event routing rules.
- SQS vs Step Functions: choose SQS for buffering work; choose Step Functions for explicit orchestration logic.
- SQS vs Amazon MQ: choose SQS for cloud-native scalable queues; choose Amazon MQ for legacy broker compatibility.

## Common SAA-C03 Traps

- Choosing SNS when the system really needs durable queued work consumption.
- Choosing SQS when the system really needs one-to-many push fanout.
- Forgetting visibility timeout behavior and message deletion.
- Missing FIFO when strict ordering is explicitly required.

## See Also

- [Application Integration Services For SAA-C03](application-integration-services-for-saa-c03.md)
- [AWS Lambda](aws-lambda.md)
- [AWS Step Functions](application-integration-services-for-saa-c03.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
