# Generated Practice Question: SQS Decoupling And Retry Isolation
> Source: Generated from the local LLM wiki conversation
> Collected: 2026-04-15
> Published: 2026-04-15

Practice Question

A company runs an order-processing application on Amazon EC2 instances. During flash-sale events, the application receives sudden spikes of orders. The current design sends each order directly to a payment service, and the web tier often times out when the payment service cannot keep up. The company wants to improve resilience and reduce the chance that incoming orders are lost. The solution should require the least operational overhead.

Which solution best meets these requirements?

A. Send all order events to Amazon SNS so the payment service can process them when capacity becomes available.

B. Place Amazon SQS between the web tier and the payment service, and configure the payment workers to poll the queue.

C. Store incoming orders in Amazon ElastiCache for Redis and have the payment service read from Redis when traffic is lower.

D. Use AWS Step Functions to invoke the payment service directly for each order and retry indefinitely.

Correct Answer: B

Why: Amazon SQS is the best fit when the requirement is durable decoupling, load leveling, and independent scaling between producers and consumers. SNS is optimized for fanout rather than queued work processing, Redis is not the right durable buffer for this pattern, and Step Functions adds orchestration overhead without solving the need for a simple high-scale queue between tiers.
