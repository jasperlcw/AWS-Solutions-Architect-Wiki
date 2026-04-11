# What is Amazon Simple Queue Service?
> Source: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Simple Queue Service (Amazon SQS) offers a secure, durable, and available hosted queue that lets you integrate and decouple distributed software systems and components. It provides constructs such as dead-letter queues and cost allocation tags.

## Benefits of using Amazon SQS

- Security: You control who can send messages to and receive messages from a queue. You can protect message contents using server-side encryption with Amazon SQS managed encryption or custom AWS KMS keys.
- Durability: Amazon SQS stores messages on multiple servers. Standard queues support at-least-once message delivery, and FIFO queues support exactly-once message processing and high-throughput mode.
- Availability: Amazon SQS uses redundant infrastructure to provide highly concurrent access to messages and high availability.
- Scalability: Amazon SQS scales transparently to handle load increases or spikes without provisioning.
- Reliability: Amazon SQS locks messages during processing so multiple producers and consumers can operate at the same time.
- Customization: Queues can use features such as default delay settings and large-message patterns using Amazon S3 or DynamoDB pointers.

## Basic Amazon SQS architecture

In a distributed messaging system, producers send messages to a queue and consumers receive them from that queue. Amazon SQS redundantly stores messages across multiple servers.

### Message lifecycle

1. A producer sends a message to a queue.
2. A consumer receives the message.
3. While the message is being processed, it remains in the queue but is hidden from subsequent receive requests for the duration of the visibility timeout.
4. The consumer deletes the message after successful processing.

Amazon SQS automatically deletes messages that have been in a queue longer than the retention period. The default retention period is 4 days, and it can be configured from 60 seconds up to 14 days.

## Differences between Amazon SQS, Amazon MQ, and Amazon SNS

Amazon SQS decouples and scales distributed software systems through queues, typically for a single subscriber workflow. Amazon SNS is for publisher-subscriber fanout to multiple subscribers. Amazon MQ is best for migrating applications that depend on traditional broker protocols such as AMQP, MQTT, OpenWire, JMS, or STOMP.

AWS recommends Amazon SQS and Amazon SNS for new applications that benefit from nearly unlimited scalability and simple APIs, while recommending Amazon MQ for broker-compatibility migrations.
