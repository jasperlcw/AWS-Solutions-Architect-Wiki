# Control subnet traffic with network access control lists
> Source: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html
> Collected: 2026-04-10
> Published: Unknown

A network access control list (ACL) allows or denies specific inbound or outbound traffic at the subnet level. You can use the default network ACL for your VPC, or you can create a custom network ACL for your VPC with rules that are similar to the rules for your security groups in order to add an additional layer of security to your VPC.

There is no additional charge for using network ACLs.

The following are the basic things to know about network ACLs before you begin.

## Network ACL associations

- Each subnet in your VPC must be associated with a network ACL. If you don't explicitly associate a subnet with a network ACL, the subnet is automatically associated with the default network ACL.
- You can create a custom network ACL and associate it with a subnet to allow or deny specific inbound or outbound traffic at the subnet level.
- You can associate a network ACL with multiple subnets. However, a subnet can be associated with only one network ACL at a time. When you associate a network ACL with a subnet, the previous association is removed.

## Network ACL rules

- A network ACL has inbound rules and outbound rules. There are quotas to the number of rules you can have per network ACL.
- Each rule can either allow or deny traffic.
- Each rule has a number from 1 to 32766.
- Rules are evaluated in order, starting with the lowest numbered rule. If the traffic matches a rule, the rule is applied and no additional rules are evaluated.
- AWS recommends creating rules in increments so new rules can be inserted later.
- Network ACL rules are evaluated when traffic enters and leaves the subnet, not as it is routed within a subnet.
- NACLs are stateless, which means that information about previously sent or received traffic is not saved. If you allow specific inbound traffic, responses are not automatically allowed.
- Security groups are stateful, which means that information about previously sent or received traffic is saved. If a security group allows inbound traffic to an EC2 instance, responses are automatically allowed regardless of outbound security group rules.

## Limitations

- There are quotas for network ACLs.
- Network ACLs can't block DNS requests to or from the Route 53 Resolver.
- Network ACLs can't block traffic to the Instance Metadata Service (IMDS).
- Network ACLs do not filter traffic destined to and from Amazon DNS, Amazon DHCP, Amazon EC2 instance metadata, Amazon ECS task metadata endpoints, Windows license activation, Amazon Time Sync Service, and reserved IP addresses used by the default VPC router.
