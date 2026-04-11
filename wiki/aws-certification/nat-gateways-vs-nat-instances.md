# NAT Gateways Vs NAT Instances
> Sources: AWS Documentation, Unknown
> Raw: [Compare NAT gateways and NAT instances](../../raw/aws-certification/2026-04-10-compare-nat-gateways-and-nat-instances.md)
> Updated: 2026-04-10

## Overview

For SAA-C03, the default answer is usually NAT gateway, not NAT instance. AWS explicitly recommends NAT gateways because they provide better availability and bandwidth and require less administrative effort. NAT instances matter mostly as legacy or highly customized options when the prompt needs behavior that a NAT gateway does not support.

## Core Exam Model

- NAT gateway is the managed default for private-subnet outbound internet access.
- NAT instance is the customer-managed EC2-based alternative.
- If the question asks which one AWS recommends in general, the answer is NAT gateway.
- If the question asks which one reduces operational burden, the answer is NAT gateway.

## Why NAT Gateways Usually Win

- Better availability: NAT gateways are implemented with redundancy in an Availability Zone.
- Better bandwidth scaling: NAT gateways scale up to very high throughput, while NAT instances depend on the EC2 instance type.
- Lower operations burden: AWS manages NAT gateways, while NAT instances require patching and maintenance by you.
- Better default performance posture: NAT gateway software is optimized for NAT traffic.

This is the main exam heuristic: prefer NAT gateways unless the prompt gives a specific reason to accept more management responsibility.

## When NAT Instances Still Matter

NAT instances can still be the right answer when the architecture needs features a NAT gateway does not support directly, such as:

- Port forwarding
- Bastion-host style usage
- Direct security-group attachment on the NAT device
- Certain packet-fragmentation behaviors that depend on TCP or ICMP reassembly

These are specialized cases. They are not the default choice for ordinary outbound internet access from private subnets.

## Operational Tradeoffs

- NAT gateway: managed by AWS, no patching, simpler administration.
- NAT instance: patching, OS upkeep, failover scripting, and sizing are your responsibility.
- NAT gateway: fixed service model.
- NAT instance: you choose instance type and size based on predicted workload.

Exam questions often hide the answer in the operational model. If the scenario emphasizes minimizing maintenance, improved resilience, or simpler design, NAT gateway gets stronger immediately.

## Common SAA-C03 Comparisons

- NAT gateway vs NAT instance: managed, scalable, highly available default versus customizable but customer-managed EC2 approach.
- NAT gateway vs internet gateway: NAT provides outbound internet access for private-side resources; an internet gateway is the direct internet attachment for the VPC.
- NAT instance vs bastion host: a NAT instance can sometimes be used in customized designs, but NAT and bastion patterns solve different access problems.

## Common SAA-C03 Traps

- Claiming NAT instances are the preferred general-purpose choice over NAT gateways.
- Assuming NAT instances auto-scale or are patched by AWS.
- Forgetting that NAT gateways do not support port forwarding or bastion-host usage.
- Ignoring that NAT instances inherit EC2 management overhead and sizing constraints.

## See Also

- [Amazon VPC](amazon-vpc.md)
- [Network Access Control Lists](network-access-control-lists.md)
- [SAA-C03 Networking And Content Delivery Services](saa-c03-networking-and-content-delivery-services.md)
- [Amazon EC2](amazon-ec2.md)
