# Network Access Control Lists
> Sources: AWS Documentation, Unknown
> Raw: [Control subnet traffic with network access control lists](../../raw/aws-certification/2026-04-10-control-subnet-traffic-with-network-access-control-lists.md)
> Updated: 2026-04-10

## Overview

Network access control lists (NACLs) are subnet-level traffic filters inside a VPC. For SAA-C03, the most important mental model is that NACLs are a coarse-grained, stateless layer that can both allow and deny traffic, while security groups are instance- or ENI-level controls that are stateful.

## Core Exam Model

- NACLs operate at the subnet boundary, not on individual instances.
- Every subnet must be associated with a NACL.
- A subnet can have only one NACL at a time, but a single NACL can be associated with multiple subnets.
- NACLs evaluate both inbound and outbound rules.
- NACL rules are processed in ascending rule-number order, and evaluation stops at the first matching rule.

This makes NACLs a good fit for broad subnet guardrails rather than fine-grained workload-specific access control.

## Stateless Versus Stateful

The key distinction AWS emphasizes is:

- NACLs are stateless, so return traffic is not automatically allowed.
- Security groups are stateful, so return traffic is automatically allowed when the initiating traffic is permitted.

This is one of the highest-yield networking distinctions on the exam. If the prompt asks which control can explicitly deny traffic at the subnet level or which control requires matching inbound and outbound allowances for a flow, think NACL.

## Rule Behavior

- NACLs support both allow rules and deny rules.
- Rule numbers matter because lower-numbered matches win first.
- Because rule evaluation is ordered, spacing rule numbers in increments leaves room for later inserts.
- Both ingress and egress need to be considered because state is not tracked for responses.

On the exam, this usually matters when AWS tests whether a design accidentally allows inbound traffic but forgets the matching outbound return path.

## Default Versus Custom NACLs

Each subnet is automatically associated with the default NACL unless you explicitly assign a custom one. Custom NACLs are where you build explicit subnet-level allow and deny behavior for segmented network designs.

## Limitations And Non-Filtered Traffic

The AWS documentation also highlights that NACLs do not filter every kind of traffic. In particular, they cannot block Route 53 Resolver DNS traffic or traffic to the Instance Metadata Service. This matters because some exam traps suggest using NACLs for controls they cannot enforce.

## Common SAA-C03 Comparisons

- NACL vs security group: subnet-level stateless filtering with allow and deny versus instance-level stateful filtering.
- NACL vs Route 53 Resolver DNS Firewall: use DNS Firewall when the requirement is DNS filtering through the resolver, because NACLs cannot block that traffic.
- NACL vs instance metadata controls: NACLs do not manage IMDS access.

## Common SAA-C03 Traps

- Reversing the state model and claiming that NACLs are stateful.
- Forgetting that return traffic needs its own matching rule path with NACLs.
- Assuming a subnet can have multiple NACLs simultaneously.
- Treating NACLs as the best fine-grained control for individual instances when security groups are usually the more precise tool.

## See Also

- [Amazon VPC](amazon-vpc.md)
- [SAA-C03 Networking And Content Delivery Services](saa-c03-networking-and-content-delivery-services.md)
- [Amazon EC2](amazon-ec2.md)
