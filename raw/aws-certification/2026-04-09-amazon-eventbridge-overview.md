# What Is Amazon EventBridge?
> Source: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html
> Collected: 2026-04-09
> Published: Unknown

EventBridge is a serverless service that uses events to connect application components together, making it easier to build scalable event-driven applications.

EventBridge provides ways to ingest, filter, transform, and deliver events.

EventBridge includes:

- Event buses, which receive events and deliver them to zero or more targets
- Pipes, which are point-to-point integrations from a single source to a single target, with optional transformation and enrichment
- EventBridge Scheduler, which creates one-time or recurring scheduled invocations

Event buses are suited for routing events from many sources to many targets, including home-grown applications, AWS services, and third-party software.

Pipes are suited for source-to-target integrations and can also feed an event bus.
