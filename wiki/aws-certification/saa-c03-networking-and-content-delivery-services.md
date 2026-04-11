# SAA-C03 Networking And Content Delivery Services
> Sources: AWS Documentation (Per-Service Docs Corpus), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09
> Raw: [AWS Client VPN](aws-client-vpn.md); [Amazon CloudFront](amazon-cloudfront.md); [AWS Direct Connect](aws-direct-connect.md); [Elastic Load Balancing](elastic-load-balancing.md); [AWS Global Accelerator](aws-global-accelerator.md); [AWS PrivateLink](aws-privatelink.md); [Amazon Route 53](amazon-route-53.md); [AWS Site-to-Site VPN](aws-site-to-site-vpn.md); [AWS Transit Gateway](aws-transit-gateway.md); [Amazon VPC](amazon-vpc.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-09

## Overview

Networking questions on SAA-C03 usually hinge on traffic path and scope: where requests enter, how traffic is distributed, whether connectivity is private or internet-based, and whether the design is single-VPC, multi-VPC, or hybrid. These services become easier to distinguish when you separate DNS, load balancing, edge delivery, private service access, and hybrid connectivity.

## Core Decision Lens

- VPC defines the network boundary.
- ELB distributes traffic across targets.
- Route 53 resolves and routes DNS requests.
- CloudFront caches and delivers content from edge locations.
- Global Accelerator routes users to optimal regional endpoints.
- Direct Connect and Site-to-Site VPN solve hybrid connectivity in different ways.
- PrivateLink solves private service consumption.
- Transit Gateway solves hub-and-spoke network connectivity.
- Client VPN solves end-user VPN access.

## Foundational Networking

### Amazon VPC

Amazon VPC is the core isolated networking boundary for subnets, route tables, gateways, and security controls. Most networking scenarios build outward from the VPC design, especially when the question is about segmentation, route flow, public versus private subnets, or security boundaries.

### AWS Transit Gateway

Transit Gateway is the hub service for connecting multiple VPCs and on-premises networks. If the prompt says many VPCs, centralized routing, or scalable hybrid connectivity, Transit Gateway is often the answer.

### AWS PrivateLink

PrivateLink is for privately consuming supported services over AWS networking without using public internet paths. It solves service access, not general VPC-to-VPC routing.

## Traffic Entry And Distribution

### Elastic Load Balancing

ELB distributes traffic across targets and appears in highly available application designs. The exam usually treats it as the front door for balancing traffic across instances, containers, or other endpoints.

### Amazon Route 53

Route 53 is DNS and DNS-based routing policy. It becomes the differentiator when the question is really about resolution, health-check-based failover, weighted routing, latency routing, or domain registration rather than request distribution itself.

### Amazon CloudFront

CloudFront is the CDN and edge caching layer. Use it when AWS emphasizes static or dynamic content acceleration close to users, reduced origin load, or edge delivery.

### AWS Global Accelerator

Global Accelerator improves global path selection to regional endpoints using Anycast static IPs. It is not a cache like CloudFront. The distinction usually appears when the question is about improving global application entry performance rather than caching content.

## Hybrid And User Connectivity

### AWS Direct Connect

Direct Connect is dedicated private connectivity from on premises into AWS. It is the answer when AWS emphasizes consistent bandwidth, private connectivity, or avoiding internet-based transport.

### AWS Site-to-Site VPN

Site-to-Site VPN is encrypted IPsec connectivity over the internet between AWS and on-premises networks. It is typically the faster-to-deploy alternative to Direct Connect.

### AWS Client VPN

Client VPN is for end-user secure access into AWS or on-premises resources. It is distinct from Site-to-Site VPN because it serves client devices rather than network-to-network tunnels.

## Common Comparisons

- CloudFront vs Global Accelerator: caching and edge content delivery versus optimized routing to regional endpoints.
- Direct Connect vs Site-to-Site VPN: dedicated private connection versus encrypted internet-based connection.
- PrivateLink vs Transit Gateway: private service access versus broader multi-network routing.
- Route 53 vs ELB: DNS routing versus request-level load distribution.

## Exam Heuristics

- If the problem is "users around the world need faster content delivery," think CloudFront.
- If the problem is "users need to reach the best regional application endpoint," think Global Accelerator.
- If the problem is "many VPCs and on-premises networks must connect centrally," think Transit Gateway.
- If the problem is "consume a service privately without public internet exposure," think PrivateLink.

## See Also

- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
