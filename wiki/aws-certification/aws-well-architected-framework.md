# AWS Well-Architected Framework
> Sources: AWS Documentation (Definitions), 2026-04-11
> Raw: [Definitions](../../raw/aws-certification/aws-well-architected-framework-definitions.md)
> Updated: 2026-04-11

## Overview

The AWS Well-Architected Framework is AWS's architecture-review model for evaluating workloads through six pillars: operational excellence, security, reliability, performance efficiency, cost optimization, and sustainability. It gives teams a shared vocabulary for design trade-offs, clarifies what AWS means by components and workloads, and frames architecture as an evolving set of milestone-based decisions rather than a one-time diagram.

## Core Purpose

AWS positions the framework as a consistent set of best practices and review questions for assessing whether an architecture aligns with AWS guidance. In practice, that makes it useful both as a design lens for new systems and as a review lens for improving running workloads.

Two ideas matter especially for study and architecture reviews:

- The framework is about trade-offs, not absolute rules.
- Architecture quality is judged at the workload level, not only at the level of individual resources.

## The Six Pillars

### Operational Excellence

Operational excellence is about supporting development and operations effectively while continuously improving how the team delivers business value. It focuses on insight, feedback loops, and better operating procedures.

### Security

Security covers protecting data, systems, and assets using cloud capabilities in ways that improve security posture. It is a foundational pillar rather than an optional optimization target.

### Reliability

Reliability means a workload performs its intended function correctly and consistently across its lifecycle. AWS explicitly includes operation and testing in this pillar, so reliability is not only about failover architecture but also about how the system is validated and run.

### Performance Efficiency

Performance efficiency is the disciplined use of compute and related resources to meet system requirements while adapting as demand and technology change. This keeps the pillar tied to right-sizing, elasticity, and service selection rather than raw speed alone.

### Cost Optimization

Cost optimization is delivering business value at the lowest price point that still satisfies the workload's needs. The important nuance is that the cheapest architecture in isolation is not always the right answer if it undermines the workload's purpose.

### Sustainability

Sustainability focuses on reducing energy consumption and improving efficiency across workload components by maximizing the value of provisioned resources while minimizing total resource use. It broadens architecture evaluation beyond the four classic SAA-C03 design dimensions.

## AWS Definitions That Shape Reviews

AWS uses a few terms precisely within the framework:

- A component is the code, configuration, and AWS resources that together satisfy a requirement.
- A workload is the set of components that together deliver business value.
- Architecture is the way those components communicate and interact inside the workload.
- Milestones are major lifecycle changes such as design, implementation, testing, go-live, and production evolution.
- A technology portfolio is the collection of workloads an organization operates.
- Level of effort is AWS's rough sizing for remediation work: low for hours to days, medium for days to weeks, and high for weeks to months.

These definitions matter because the Well-Architected review process operates at workload scope and asks teams to reason about remediation effort, not just identify best-practice gaps.

## Trade-Off Guidance

AWS explicitly says teams make trade-offs between pillars based on business context. Development environments may accept lower reliability in exchange for lower cost or better sustainability, while mission-critical systems often increase cost to improve reliability. AWS also notes that security and operational excellence are generally not treated as pillars to trade away.

## Exam And Tooling Relevance

For SAA-C03 study, the framework helps explain why the exam is organized around secure, resilient, high-performing, and cost-optimized designs: those domains are closely aligned to core Well-Architected concerns, even though the full framework now includes operational excellence and sustainability as well. The AWS Well-Architected Tool is the management-plane service that turns this framework into a structured review workflow.

## See Also

- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
- [SAA-C03 Management And Governance Services](saa-c03-management-and-governance-services.md)
- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
