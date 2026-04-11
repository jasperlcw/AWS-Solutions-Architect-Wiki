# AWS Lambda
> Sources: AWS Documentation, Unknown; AWS Documentation (Per-Service Docs Corpus), 2026-04-09
> Raw: [What is AWS Lambda?](../../raw/aws-certification/2026-04-09-what-is-aws-lambda.md); [AWS Lambda](../../raw/aws-certification/service-docs/aws-lambda.md)
> Updated: 2026-04-09

## Overview

AWS Lambda is the default SAA-C03 answer for event-driven compute when you want to run code without provisioning servers. The exam expects you to recognize Lambda as the serverless function layer for triggers, lightweight backends, event processing, and managed integrations, then distinguish it from EC2, containers, and workflow services.

## Core Exam Model

- Lambda runs code without server management.
- AWS handles infrastructure, scaling, operating system maintenance, capacity provisioning, and logging.
- You remain responsible for the function code, permissions, and how the function fits into the wider architecture.
- Lambda is typically triggered by events from AWS services or invoked by applications and APIs.

## Trigger And Integration Patterns

- Use Lambda for S3-driven file processing.
- Use Lambda for scheduled tasks with EventBridge.
- Use Lambda for stream processing and event-driven automation.
- Use Lambda behind API Gateway or Function URLs for lightweight APIs.
- Use Lambda as a worker that reacts to queue, stream, or event sources instead of running continuously.

On SAA-C03, Lambda is often correct when the prompt describes reacting to events, not maintaining long-lived servers.

## Security And Deployment Controls

- Execution roles control what AWS resources your function can access.
- Resource policies can control what can invoke your function.
- Environment variables, versions, and layers are recurring Lambda building blocks.
- Code signing can appear when the scenario emphasizes trusted deployment controls.

## Performance And Packaging Clues

- Concurrency controls matter when the architecture must manage traffic spikes or limit downstream pressure.
- SnapStart is the latency-reduction clue for supported cold-start-sensitive scenarios.
- Container images matter when packaging dependencies exceeds simple zip-based workflows.
- VPC integration matters when the function must reach private resources.
- EFS integration matters when the design needs shared persistent file access across invocations.

## Common SAA-C03 Comparisons

- Lambda vs EC2: choose Lambda for event-driven code with minimal operations; choose EC2 for server-level control.
- Lambda vs Fargate: choose Lambda for functions and short-lived event handling; choose Fargate for containerized workloads.
- Lambda vs Step Functions: Lambda runs code; Step Functions orchestrates multi-step logic.
- Lambda vs SQS: Lambda is compute; SQS is buffering and decoupling.

## Common SAA-C03 Traps

- Choosing Lambda when the core need is long-running orchestration rather than function execution.
- Treating Lambda as if it were a queue or workflow engine by itself.
- Forgetting IAM execution roles and invocation permissions in cross-service designs.
- Missing that Lambda can integrate with VPC resources and EFS when the prompt points to private networking or shared files.

## See Also

- [SAA-C03 Serverless And Front-End Services](saa-c03-serverless-and-front-end-services.md)
- [Application Integration Services For SAA-C03](application-integration-services-for-saa-c03.md)
- [Amazon EFS](amazon-efs.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
