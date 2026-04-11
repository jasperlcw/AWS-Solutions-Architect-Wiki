# What is Step Functions?
> Source: https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html
> Collected: 2026-04-09
> Published: Unknown

With AWS Step Functions, you can create workflows, also called state machines, to build distributed applications, automate processes, orchestrate microservices, and create data and machine learning pipelines.

Step Functions is based on state machines and tasks. Each step in a workflow is called a state. A Task state represents a unit of work that another AWS service performs.

Step Functions supports:

- Standard workflows for long-running, auditable workflows with exactly-once workflow execution and durations up to one year
- Express workflows for high-event-rate workloads with at-least-once execution and durations up to five minutes

Step Functions integrates with multiple AWS services through AWS SDK integrations and optimized integrations.

Supported service integration patterns include:

- Request Response
- Run a Job (.sync)
- Wait for a callback with a task token (.waitForTaskToken)

Example use cases include:

- Orchestrating tasks in order
- Choosing tasks based on input data
- Error handling with retry and catch behavior
- Human approval steps
- Parallel processing
- Map-based processing across collections of items
