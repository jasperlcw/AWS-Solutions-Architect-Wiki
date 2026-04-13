# SAA-C03 Compute And Containers Services
> Sources: AWS Documentation (Per-Service Docs Corpus), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09; AWS Documentation, Unknown; AWS Documentation, Unknown
> Raw: [AWS Batch](../../raw/aws-certification/service-docs/aws-batch.md); [Amazon EC2](../../raw/aws-certification/service-docs/amazon-ec2.md); [What is Amazon EC2?](../../raw/aws-certification/2026-04-09-what-is-amazon-ec2.md); [Placement groups for your Amazon EC2 instances](../../raw/aws-certification/service-docs/ec2-placement-groups.md); [Amazon EC2 Auto Scaling](../../raw/aws-certification/service-docs/amazon-ec2-auto-scaling.md); [AWS Elastic Beanstalk](../../raw/aws-certification/service-docs/aws-elastic-beanstalk.md); [AWS Outposts](../../raw/aws-certification/service-docs/aws-outposts.md); [AWS Serverless Application Repository](../../raw/aws-certification/service-docs/aws-serverless-application-repository.md); [VMware Cloud on AWS](../../raw/aws-certification/service-docs/vmware-cloud-on-aws.md); [AWS Wavelength](../../raw/aws-certification/service-docs/aws-wavelength.md); [Amazon ECR](../../raw/aws-certification/service-docs/amazon-ecr.md); [Amazon ECS](../../raw/aws-certification/service-docs/amazon-ecs.md); [Amazon ECS Anywhere](../../raw/aws-certification/service-docs/amazon-ecs-anywhere.md); [Amazon EKS](../../raw/aws-certification/service-docs/amazon-eks.md); [Amazon EKS Anywhere](../../raw/aws-certification/service-docs/amazon-eks-anywhere.md); [Amazon EKS Distro](../../raw/aws-certification/service-docs/amazon-eks-distro.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-13

## Overview

This page groups the SAA-C03 compute and container services that determine how much infrastructure control you keep, how applications are packaged, and whether the workload is cloud-native, hybrid, or edge-oriented. These questions are usually solved by first identifying the runtime model and then choosing the service that minimizes operations while still meeting compatibility, performance, or location constraints.

## Core Decision Lens

- EC2 when the architecture needs direct instance-level control.
- Elastic Beanstalk when the main need is simpler application deployment on managed infrastructure.
- Batch when the requirement is queued batch processing rather than interactive application serving.
- ECS when the team wants AWS-native container orchestration.
- EKS when the team needs Kubernetes semantics or portability.
- ECR when the problem is image storage and distribution, not runtime orchestration.
- Outposts, VMware Cloud on AWS, ECS Anywhere, EKS Anywhere, EKS Distro, and Wavelength when the prompt emphasizes hybrid, edge, or compatibility constraints.

## Compute Services

### Amazon EC2

Amazon EC2 is the baseline compute service for workloads that need operating system control, custom software installation, instance family tuning, or direct control over storage and networking. If the question centers on instance selection, EBS attachment, custom AMIs, security groups, placement groups, or reserved capacity behavior, EC2 is usually the anchor service. Placement groups are the specific EC2 feature to remember when the problem is about topology between instances: cluster for low-latency tightly coupled nodes, partition for distributed rack-aware fault domains, and spread for a few critical instances on distinct hardware.

### Amazon EC2 Auto Scaling

Amazon EC2 Auto Scaling adjusts instance counts based on demand or schedules. In exam scenarios it is the scale-control layer for EC2 fleets, especially behind load balancers or in highly variable traffic patterns.

### AWS Batch

AWS Batch is for queued batch jobs and large-scale job scheduling. It is a better fit than raw EC2 when the problem is "run many jobs efficiently" rather than "serve requests continuously."

### AWS Elastic Beanstalk

Elastic Beanstalk simplifies deploying application code onto AWS-managed infrastructure. It is useful when the architecture still uses familiar application platforms but wants less deployment and environment-management work than hand-built EC2 stacks.

### AWS Outposts

AWS Outposts brings AWS-managed hardware and APIs into customer sites. It is a strong fit when workloads must remain on premises for latency, data residency, or local processing reasons but still want AWS operational consistency.

### VMware Cloud on AWS

VMware Cloud on AWS appears when migration or hybrid continuity matters more than cloud-native redesign. It is the answer when VMware-based operational models need to extend into AWS with minimal refactoring.

### AWS Wavelength

AWS Wavelength is the edge compute choice for ultra-low-latency mobile applications. If the question emphasizes telecom edge presence or latency-sensitive mobile interactions near 5G networks, Wavelength is the differentiator.

### AWS Serverless Application Repository

This service is not general compute; it is a packaging and reuse catalog for serverless applications. It is relevant when the architecture wants to discover, share, or deploy prebuilt serverless components.

## Container Services

### Amazon ECR

Amazon ECR is the managed image registry. It stores and distributes container images and often pairs with ECS or EKS, but it does not schedule or run containers itself.

### Amazon ECS

Amazon ECS is the AWS-native container orchestrator. It is usually the simpler answer than EKS when the question needs managed containers without requiring Kubernetes-specific tooling or APIs.

### Amazon ECS Anywhere

ECS Anywhere extends ECS management to customer-managed infrastructure. This is the hybrid answer when the control model should remain ECS while the runtime location extends beyond AWS.

### Amazon EKS

Amazon EKS is the managed Kubernetes control plane on AWS. It is the right answer when the organization is standardized on Kubernetes or the prompt explicitly points to Kubernetes-native tooling and ecosystem expectations.

### Amazon EKS Anywhere

EKS Anywhere brings EKS-aligned Kubernetes operations to on-premises infrastructure. It matters when Kubernetes consistency across AWS and on premises is more important than fully managed cloud-first operation.

### Amazon EKS Distro

EKS Distro is the open-source Kubernetes distribution aligned with EKS. It is more foundational than EKS itself and appears when AWS wants you to recognize the distribution layer rather than the managed service.

## Common Comparisons

- EC2 vs Elastic Beanstalk: choose EC2 for direct control, Elastic Beanstalk for simpler application deployment.
- ECS vs EKS: choose ECS for AWS-native simplicity, EKS for Kubernetes-native requirements.
- ECS Anywhere vs EKS Anywhere: same hybrid idea, but tied to different orchestration stacks.
- Outposts vs VMware Cloud on AWS vs Wavelength: Outposts is on-premises AWS hardware, VMware Cloud on AWS preserves VMware operations, and Wavelength is mobile edge compute.

## Exam Heuristics

- If the scenario needs virtual machines with OS-level control, start with EC2 before considering higher abstractions.
- If the question says containers but does not require Kubernetes, ECS is often the lower-operations answer.
- If the prompt emphasizes Kubernetes compatibility, choose EKS over ECS.
- If the workload is job-oriented and queue-driven, think Batch before building custom schedulers on EC2.
- If the architecture must stay close to end users or local equipment, watch for Wavelength or Outposts.

## See Also

- [Amazon EC2](amazon-ec2.md)
- [EC2 Placement Groups](ec2-placement-groups.md)
- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
