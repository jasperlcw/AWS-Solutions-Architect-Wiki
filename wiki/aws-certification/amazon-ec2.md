# Amazon EC2
> Sources: AWS Documentation, Unknown; AWS Documentation (Per-Service Docs Corpus), 2026-04-09
> Raw: [What is Amazon EC2?](../../raw/aws-certification/2026-04-09-what-is-amazon-ec2.md); [Amazon EC2](../../raw/aws-certification/service-docs/amazon-ec2.md)
> Updated: 2026-04-09

## Overview

Amazon EC2 is the default SAA-C03 answer when a workload needs virtual machines with operating system control, custom software installation, fine-grained compute sizing, and direct responsibility for storage, networking, and scaling choices. The exam often tests whether you should stay at the instance layer or move to a higher-level managed runtime.

## Core Exam Model

- EC2 gives you virtual servers in AWS, not a fully managed platform.
- You choose the instance type, operating system image, storage layout, network exposure, and scaling strategy.
- Instance types represent tradeoffs among compute, memory, network, and storage resources.
- EC2 is a foundation that commonly combines with EBS, load balancers, Auto Scaling, CloudWatch, IAM, and VPC constructs.

## Core Building Blocks

- AMIs are the machine templates used to launch instances.
- Instance types are the sizing and hardware profiles used to match workload characteristics.
- EBS volumes provide persistent block storage for instances.
- Instance store provides temporary storage that should be treated as ephemeral.
- Key pairs are the classic secure login mechanism for supported instance access patterns.
- Security groups act as instance-level virtual firewalls.

These basics show up repeatedly in SAA-C03 because they define whether a design is durable, recoverable, internet-accessible, horizontally scalable, or overprovisioned.

## Storage And Persistence Heuristics

- If the exam scenario needs persistent boot or data volumes, think EBS-backed EC2.
- If the question mentions temporary scratch space or data loss on stop or termination being acceptable, instance store can fit.
- If persistence must outlive individual instances, do not rely on instance store.
- If the architecture really needs shared managed file storage across multiple servers, the answer may be EFS or FSx rather than "more EC2."

## Scaling, Availability, And Operations

- Use Auto Scaling when the question is about matching instance count to changing demand.
- Use Elastic Load Balancing when requests must be distributed across multiple instances.
- Use CloudWatch for instance and EBS monitoring signals.
- Use Systems Manager when the question emphasizes fleet operations, secure administration, or remote management at scale.
- Use Image Builder when the architecture depends on repeatable hardened images.

For SAA-C03, EC2 is often correct only as part of a broader pattern such as EC2 plus ALB plus Auto Scaling plus EBS.

## Pricing Models That Matter On The Exam

- On-Demand for short-lived, unpredictable, or no-commitment workloads.
- Spot for interruptible and cost-sensitive workloads.
- Reserved Instances or Savings Plans for steady long-term usage and lower cost.
- Dedicated Hosts when the requirement is host-level isolation, license affinity, or certain compliance constraints.
- On-Demand Capacity Reservations when the scenario is about guaranteeing capacity in a specific Availability Zone.

One recurring exam trick is separating price discount instruments from capacity guarantees. Savings Plans and Reserved Instances focus on cost. Capacity Reservations focus on availability of capacity.

## Common SAA-C03 Comparisons

- EC2 vs Elastic Beanstalk: choose EC2 for direct infrastructure control; choose Elastic Beanstalk when the goal is simpler application deployment with less operational setup.
- EC2 vs Lambda: choose EC2 when the workload needs persistent servers, custom runtimes, or long-running instance-based control.
- EC2 vs ECS or EKS: choose EC2 alone when the problem is virtual machines; choose container services when the prompt is about container orchestration.
- EC2 vs Lightsail: choose EC2 when you need AWS-native flexibility and deeper infrastructure controls rather than simplified bundled hosting.

## Common SAA-C03 Traps

- Treating EC2 as automatically scalable without Auto Scaling.
- Forgetting that EBS and instance store have different persistence behavior.
- Using Spot Instances for workloads that cannot tolerate interruption.
- Assuming Reserved Instances guarantee capacity in the same way Capacity Reservations do.
- Choosing raw EC2 when the question is really asking for a higher-level managed service.

## See Also

- [SAA-C03 Compute And Containers Services](saa-c03-compute-and-containers-services.md)
- [SAA-C03 Storage Services](saa-c03-storage-services.md)
- [SAA-C03 Cost Management Services](saa-c03-cost-management-services.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
