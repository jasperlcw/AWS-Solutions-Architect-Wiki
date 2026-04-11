# SAA-C03 Management And Governance Services
> Sources: AWS Documentation (Per-Service Docs Corpus), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09
> Raw: [AWS Auto Scaling](aws-auto-scaling.md); [AWS CLI](aws-cli.md); [AWS CloudFormation](aws-cloudformation.md); [AWS CloudTrail](aws-cloudtrail.md); [Amazon CloudWatch](amazon-cloudwatch.md); [AWS Compute Optimizer](aws-compute-optimizer.md); [AWS Config](aws-config.md); [AWS Control Tower](aws-control-tower.md); [AWS Health Dashboard](aws-health-dashboard.md); [AWS License Manager](aws-license-manager.md); [Amazon Managed Grafana](amazon-managed-grafana.md); [Amazon Managed Service for Prometheus](amazon-managed-service-for-prometheus.md); [AWS Management Console](aws-management-console.md); [AWS Organizations](aws-organizations.md); [AWS Service Catalog](aws-service-catalog.md); [AWS Systems Manager](aws-systems-manager.md); [AWS Trusted Advisor](aws-trusted-advisor.md); [AWS Well-Architected Tool](aws-well-architected-tool.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-09

## Overview

Management and governance questions test whether you can distinguish provisioning, observability, auditability, multi-account control, operations tooling, and advisory services. Many of these services sound adjacent, but the exam usually expects you to identify which one owns resource deployment, logs, config history, account structure, or operational remediation.

## Core Decision Lens

- CloudFormation for provisioning infrastructure.
- CloudTrail for API activity history.
- CloudWatch for metrics, logs, alarms, and dashboards.
- Config for configuration history and compliance evaluation.
- Organizations and Control Tower for multi-account governance.
- Systems Manager for operational management and automation.
- Trusted Advisor and Compute Optimizer for different forms of recommendations.

## Provisioning And Access Tools

### AWS CloudFormation

CloudFormation is infrastructure as code for repeatable provisioning. It is the main answer when the requirement is to model, version, and deploy AWS infrastructure consistently.

### AWS CLI And AWS Management Console

These are access methods rather than architecture primitives, but AWS keeps them in scope. The CLI fits scripting and automation, while the Management Console is the browser-based administration layer.

### AWS Service Catalog

Service Catalog provides curated self-service products and approved deployment options. It matters when AWS emphasizes controlled deployment choices across an organization.

## Observability, Audit, And Health

### Amazon CloudWatch

CloudWatch is metrics, logs, alarms, and dashboards. It is the operational visibility layer.

### AWS CloudTrail

CloudTrail is the API audit trail. If the prompt is about "who changed what" or recording account activity, CloudTrail is the likely answer.

### AWS Config

Config tracks resource configuration state and compliance over time. It is stronger than CloudTrail when the problem is current or historical configuration posture rather than API events.

### AWS Health Dashboard

AWS Health provides account-specific service health events and operational notices.

### Amazon Managed Grafana And Amazon Managed Service For Prometheus

These services sit in the observability ecosystem: Prometheus for metrics collection and querying compatibility, Grafana for visualization.

## Multi-Account And Governance

### AWS Organizations

Organizations is the multi-account governance and consolidated billing foundation.

### AWS Control Tower

Control Tower builds on multi-account governance with landing zone and guardrail setup. It is the answer when the prompt emphasizes account vending, guardrails, or standardized multi-account baselines.

### AWS Well-Architected Tool

This tool supports structured reviews against the Well-Architected pillars and appears when AWS emphasizes architecture review discipline rather than runtime operations.

## Operations And Optimization

### AWS Systems Manager

Systems Manager is the broad operations toolkit for patching, session access, automation, inventory, and parameter management.

### AWS Auto Scaling

AWS Auto Scaling coordinates scaling across multiple supported services. It is broader than EC2 Auto Scaling alone.

### AWS Compute Optimizer

Compute Optimizer is rightsizing-focused recommendation tooling.

### AWS Trusted Advisor

Trusted Advisor provides best-practice guidance across cost, performance, service limits, resilience, and security.

### AWS License Manager

License Manager appears when the architecture needs software-license visibility or governance.

## Common Comparisons

- CloudTrail vs Config: API activity history versus configuration state and compliance history.
- CloudWatch vs CloudTrail: operational telemetry versus audit activity.
- Organizations vs Control Tower: foundational multi-account structure versus landing zone and guardrail acceleration.
- Trusted Advisor vs Compute Optimizer: broad recommendations versus compute rightsizing.

## Exam Heuristics

- If the question asks how to define infrastructure consistently, think CloudFormation.
- If it asks how to see API calls, think CloudTrail.
- If it asks how to alert on metrics or logs, think CloudWatch.
- If it asks how to evaluate resource compliance over time, think Config.
- If it asks how to manage many AWS accounts centrally, think Organizations or Control Tower depending on whether landing-zone setup matters.

## See Also

- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
