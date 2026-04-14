# Generated Practice Question: NAT Gateway High Availability
> Source: Generated from the local LLM wiki conversation
> Collected: 2026-04-14
> Published: 2026-04-14

Practice Question

A company runs a web application on EC2 instances in private subnets across two Availability Zones. The instances must download software updates from the internet. The company wants the solution with the least operational overhead while maintaining high availability.

Which solution best meets these requirements?

A. Deploy one NAT instance in a public subnet and route all outbound traffic through it.

B. Deploy one internet gateway for each private subnet.

C. Deploy a NAT gateway in each Availability Zone and route each private subnet to the NAT gateway in its own zone.

D. Deploy a bastion host in each public subnet and route private-subnet traffic through the bastion hosts.

Correct Answer: C

Why: The LLM wiki consistently treats NAT gateway as the default managed answer for private-subnet outbound internet access, especially when the prompt emphasizes low maintenance and resilience. A NAT instance adds patching and failover overhead, an internet gateway does not provide direct outbound access for private instances by itself, and bastion hosts solve admin access rather than NAT egress.
