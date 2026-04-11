# Amazon VPC
> Sources: AWS Documentation, Unknown; AWS Documentation (Per-Service Docs Corpus), 2026-04-09
> Raw: [What is Amazon VPC?](../../raw/aws-certification/2026-04-10-what-is-amazon-vpc.md); [Amazon VPC](../../raw/aws-certification/service-docs/amazon-vpc.md)
> Updated: 2026-04-10

## Overview

Amazon VPC is the foundational AWS networking boundary for SAA-C03. It is the service that gives you a logically isolated virtual network, then lets you shape connectivity with subnets, IP ranges, route tables, gateways, endpoints, and security controls. On the exam, many networking questions are really VPC-design questions in disguise.

## Core Exam Model

- A VPC is the top-level network container for AWS resources in a Region.
- Subnets carve that network into smaller ranges, and each subnet belongs to exactly one Availability Zone.
- Route tables determine where traffic goes.
- Gateways and endpoints determine how the VPC reaches the internet, AWS services, or other networks.
- VPC is not the same thing as a load balancer, DNS service, or hybrid link. It is the network boundary those pieces attach to.

The biggest SAA-C03 skill is recognizing when the prompt is asking you to design the network boundary itself versus choosing an adjacent service that operates inside or around that boundary.

## Foundational Building Blocks

- Use subnets to separate public-facing and private workloads.
- Use IPv4 and IPv6 addressing according to application and connectivity requirements.
- Use route tables to send traffic to the correct destination, such as an internet gateway, NAT path, virtual private gateway, or local target.
- Use security groups and NACLs as layered security controls, remembering that NACLs work at the subnet boundary while security groups are the more common fine-grained workload control.
- Use internet gateways for internet connectivity, and VPC endpoints when the requirement is private access to supported AWS services without traversing the public internet.
- Use NAT gateways as the usual managed answer for private-subnet outbound internet access; treat NAT instances as the more customizable but higher-maintenance alternative.
- Use VPC peering for direct routing between two VPCs when the design is simple and point-to-point.
- Use Transit Gateway when the architecture involves many VPCs or a central hub for VPC, VPN, and Direct Connect connectivity.

## Default VPC Versus Custom VPC

Every AWS account includes a default VPC in each Region. The default VPC is designed to let you start launching and connecting to EC2 instances immediately, which makes it convenient for simple or introductory setups.

Custom VPCs are the better mental model for most exam architecture questions. When the scenario calls for explicit subnet layout, custom IP ranges, tailored routing, tighter isolation, private application tiers, or specialized gateways and endpoints, assume you are working in a nondefault VPC design.

## Connectivity Patterns

- For internet-facing resources, combine public subnets with an internet gateway.
- For private workloads that still need outbound access, pair private subnets with the appropriate egress design.
- For private access to AWS services, prefer VPC endpoints when the prompt emphasizes avoiding internet exposure or NAT dependency.
- For on-premises connectivity, pair the VPC with Site-to-Site VPN or Direct Connect depending on whether the question emphasizes fast deployment over the internet or dedicated private connectivity.
- For packet-level visibility, VPC Flow Logs and Traffic Mirroring are observability and inspection tools rather than routing tools.

## Pricing And Cost Signals

The VPC itself does not add a direct charge, but many VPC-adjacent components do. Exam questions can hide cost clues in networking architecture, especially when NAT gateways, public IPv4 addresses, traffic analysis tools, or specialized address-management features appear in the design.

A useful distinction is that private IPv4 addressing is not the cost signal, while public IPv4 usage and certain managed VPC components often are.

## Common SAA-C03 Traps

- Confusing the VPC boundary with the mechanisms layered on top of it, such as Route 53, ELB, or Direct Connect.
- Reaching for VPC peering when the prompt actually describes a many-network hub-and-spoke design better served by Transit Gateway.
- Forgetting that subnets are Availability-Zone scoped.
- Choosing an internet-based path when the question is really asking for private service access through a VPC endpoint.
- Treating the default VPC as the right answer for architectures that require deliberate network segmentation and custom routing.

## See Also

- [Network Access Control Lists](network-access-control-lists.md)
- [NAT Gateways Vs NAT Instances](nat-gateways-vs-nat-instances.md)
- [SAA-C03 Networking And Content Delivery Services](saa-c03-networking-and-content-delivery-services.md)
- [Amazon EC2](amazon-ec2.md)
- [Amazon RDS](amazon-rds.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
