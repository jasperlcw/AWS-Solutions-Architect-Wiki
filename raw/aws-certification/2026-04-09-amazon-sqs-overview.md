# What is Amazon Simple Queue Service?
> Source: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Simple Queue Service (Amazon SQS) offers a secure, durable, and available hosted queue that lets you integrate and decouple distributed software systems and components.

Amazon SQS benefits include:

- Security, including control over who can send and receive messages and support for encryption
- Durability through redundant storage
- Availability through redundant infrastructure
- Scalability without provisioning
- Reliability through visibility timeout-based processing
- Customization, including delay settings and dead-letter queues

Standard queues support at-least-once message delivery. FIFO queues support exactly-once message processing and ordered delivery characteristics.

Amazon SQS is used for distributed queues with producers sending messages to a queue and consumers receiving and deleting messages after processing.

The service documentation compares Amazon SQS with Amazon SNS and Amazon MQ:

- Amazon SQS is a queue service typically used for decoupling and single-consumer processing
- Amazon SNS is for topic-based fanout to multiple subscribers
- Amazon MQ is for broker-based messaging and legacy protocol compatibility
