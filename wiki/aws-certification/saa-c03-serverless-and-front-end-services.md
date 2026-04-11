# SAA-C03 Serverless And Front-End Services
> Sources: AWS Documentation (Per-Service Docs Corpus), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09; AWS Documentation, Unknown
> Raw: [AWS Amplify](../../raw/aws-certification/service-docs/aws-amplify.md); [Amazon API Gateway](../../raw/aws-certification/service-docs/amazon-api-gateway.md); [AWS Device Farm](../../raw/aws-certification/service-docs/aws-device-farm.md); [AWS AppSync](../../raw/aws-certification/service-docs/aws-appsync.md); [AWS Fargate](../../raw/aws-certification/service-docs/aws-fargate.md); [AWS Lambda](../../raw/aws-certification/service-docs/aws-lambda.md); [What is AWS Lambda?](../../raw/aws-certification/2026-04-09-what-is-aws-lambda.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-09

## Overview

This category groups services that reduce infrastructure management while supporting client applications and APIs. SAA-C03 often uses these services to test whether the workload needs functions, containers without servers, API front doors, GraphQL aggregation, front-end delivery, or device testing.

## Service Roles

### AWS Lambda

Lambda is the event-driven function runtime. It is the default answer when the prompt wants code execution without server management. Watch for trigger-based patterns, execution roles, concurrency controls, API integrations, and EFS or VPC connectivity when the question needs more than the basic "serverless function" label.

### AWS Fargate

Fargate is serverless compute for containers on ECS or EKS. It is the right choice when the architecture still needs containers but wants to avoid managing servers.

### Amazon API Gateway

API Gateway is the managed API entry layer for REST, HTTP, and WebSocket APIs. It is the front-door answer for many serverless architectures.

### AWS AppSync

AppSync is the GraphQL-oriented API and real-time interaction layer. It is best understood as a client-facing data-aggregation interface rather than general-purpose compute.

### AWS Amplify

Amplify is the front-end developer platform and hosting layer for web and mobile applications.

### AWS Device Farm

Device Farm is real-device and browser testing infrastructure.

## Common Comparisons

- Lambda vs Fargate: function-level event compute versus container compute without server management.
- API Gateway vs AppSync: general API front door versus GraphQL and real-time application layer.
- Amplify vs Device Farm: front-end build and hosting versus testing.

## Exam Heuristics

- If the prompt says "run small units of code on events," think Lambda.
- If it says "containers, but no servers to manage," think Fargate.
- If the question centers on exposing APIs, think API Gateway first unless it explicitly points to GraphQL or real-time data sync, in which case AppSync becomes stronger.

## See Also

- [AWS Lambda](aws-lambda.md)
- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [Application Integration Services For SAA-C03](application-integration-services-for-saa-c03.md)
