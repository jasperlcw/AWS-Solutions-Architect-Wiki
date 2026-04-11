# What is Amazon VPC?
> Source: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
> Collected: 2026-04-10
> Published: Unknown

With Amazon Virtual Private Cloud (Amazon VPC), you can launch AWS resources in a logically isolated virtual network that you've defined. This virtual network closely resembles a traditional network that you'd operate in your own data center, with the benefits of using the scalable infrastructure of AWS.

The following features help you configure a VPC to provide the connectivity that your applications need:

## Virtual private clouds (VPC)

A VPC is a virtual network that closely resembles a traditional network that you'd operate in your own data center. After you create a VPC, you can add subnets.

## Subnets

A subnet is a range of IP addresses in your VPC. A subnet must reside in a single Availability Zone. After you add subnets, you can deploy AWS resources in your VPC.

## IP addressing

You can assign IP addresses, both IPv4 and IPv6, to your VPCs and subnets. You can also bring your public IPv4 addresses and IPv6 GUA addresses to AWS and allocate them to resources in your VPC, such as EC2 instances, NAT gateways, and Network Load Balancers.

## Routing

Use route tables to determine where network traffic from your subnet or gateway is directed.

## Gateways and endpoints

A gateway connects your VPC to another network. For example, use an internet gateway to connect your VPC to the internet. Use a VPC endpoint to connect to AWS services privately, without the use of an internet gateway or NAT device.

## Peering connections

Use a VPC peering connection to route traffic between the resources in two VPCs.

## Traffic Mirroring

Copy network traffic from network interfaces and send it to security and monitoring appliances for deep packet inspection.

## Transit gateways

Use a transit gateway, which acts as a central hub, to route traffic between your VPCs, VPN connections, and Direct Connect connections.

## VPC Flow Logs

A flow log captures information about the IP traffic going to and from network interfaces in your VPC.

## VPN connections

Connect your VPCs to your on-premises networks using AWS Virtual Private Network (Site-to-Site VPN).

## Getting started with Amazon VPC

Your AWS account includes a default VPC in each AWS Region. Your default VPCs are configured such that you can immediately start launching and connecting to EC2 instances.

You can choose to create additional VPCs with the subnets, IP addresses, gateways and routing that you need.

## Working with Amazon VPC

You can create and manage your VPCs using any of the following interfaces:

- AWS Management Console
- AWS Command Line Interface (AWS CLI)
- AWS SDKs
- Query API

## Pricing for Amazon VPC

There's no additional charge for using a VPC. There are, however, charges for some VPC components, such as NAT gateways, IP Address Manager, traffic mirroring, Reachability Analyzer, and Network Access Analyzer.

Nearly all resources that you launch in your virtual private cloud (VPC) provide you with an IP address for connectivity. The vast majority of resources in your VPC use private IPv4 addresses. Resources that require direct access to the internet over IPv4, however, use public IPv4 addresses.

Amazon VPC enables you to launch managed services, such as Elastic Load Balancing, Amazon RDS, and Amazon EMR, without having a VPC set up beforehand. It does this by using the default VPC in your account if you have one. Any public IPv4 addresses provisioned to your account by the managed service will be charged. These charges will be associated with Amazon VPC service in your AWS Cost and Usage Report.

## Pricing for public IPv4 addresses

A public IPv4 address is an IPv4 address that is routable from the internet. A public IPv4 address is necessary for a resource to be directly reachable from the internet over IPv4.

If you are an existing or new AWS Free Tier customer, you get 750 hours of public IPv4 address usage with the EC2 service at no charge. If you are not using the EC2 service in the AWS Free Tier, public IPv4 addresses are charged.

Private IPv4 addresses (RFC 1918) are not charged.

Public IPv4 addresses have the following types:

- Elastic IP addresses (EIPs): static public IPv4 addresses provided by Amazon that you can associate with an EC2 instance, elastic network interface, or AWS resource.
- EC2 public IPv4 addresses: public IPv4 addresses assigned to an EC2 instance by Amazon.
- BYOIPv4 addresses: public IPv4 addresses in the IPv4 address range that you've brought to AWS using Bring Your Own IP addresses (BYOIP).
- Service-managed IPv4 addresses: public IPv4 addresses automatically provisioned on AWS resources and managed by an AWS service.
