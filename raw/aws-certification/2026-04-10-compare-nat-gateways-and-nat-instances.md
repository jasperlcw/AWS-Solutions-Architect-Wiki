# Compare NAT gateways and NAT instances
> Source: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-comparison.html
> Collected: 2026-04-10
> Published: Unknown

The following is a high-level summary of the differences between NAT gateways and NAT instances. AWS recommends that you use NAT gateways because they provide better availability and bandwidth and require less effort on your part to administer.

## Comparison summary

- Availability
  - NAT gateway: Highly available. NAT gateways in each Availability Zone are implemented with redundancy. Create a NAT gateway in each Availability Zone to ensure zone-independent architecture.
  - NAT instance: Use a script to manage failover between instances.

- Bandwidth
  - NAT gateway: Scales up to 100 Gbps.
  - NAT instance: Depends on the bandwidth of the instance type.

- Maintenance
  - NAT gateway: Managed by AWS. You do not need to perform any maintenance.
  - NAT instance: Managed by you, for example, by installing software updates or operating system patches on the instance.

- Performance
  - NAT gateway: Software is optimized for handling NAT traffic.
  - NAT instance: A generic AMI that's configured to perform NAT.

- Cost
  - NAT gateway: Charged based on number of gateways, duration of usage, and amount of data processed.
  - NAT instance: Charged based on number of instances, duration of usage, and instance type and size.

- Type and size
  - NAT gateway: Uniform offering; you do not need to decide on type or size.
  - NAT instance: Choose a suitable instance type and size according to workload.

- Public IP addresses
  - NAT gateway: Choose the Elastic IP address to associate with a public NAT gateway at creation.
  - NAT instance: Use an Elastic IP address or a public IP address, and you can change the public IP at any time by associating a new Elastic IP.

- Private IP addresses
  - NAT gateway: Automatically selected from the subnet range when the gateway is created.
  - NAT instance: Assign a specific private IP address from the subnet range when the instance launches.

- Security groups
  - NAT gateway: You cannot associate security groups directly with NAT gateways.
  - NAT instance: You can associate security groups with the NAT instance.

- Network ACLs
  - Both use subnet-level network ACLs for traffic control.

- Flow logs
  - Both can be monitored with flow logs.

- Port forwarding
  - NAT gateway: Not supported.
  - NAT instance: Can be manually customized to support port forwarding.

- Bastion server
  - NAT gateway: Not supported.
  - NAT instance: Can be used as a bastion server.

- Traffic metrics
  - NAT gateway: CloudWatch NAT gateway metrics.
  - NAT instance: CloudWatch instance metrics.

- Timeout behavior
  - NAT gateway: Returns an RST packet after timeout if resources continue the connection.
  - NAT instance: Sends a FIN packet after timeout to close the connection.

- IP fragmentation
  - NAT gateway: Supports forwarding UDP fragmented packets, but not TCP or ICMP fragmented packets.
  - NAT instance: Supports reassembly of UDP, TCP, and ICMP fragmented packets.

## Migration guidance

If you are already using a NAT instance, AWS recommends replacing it with a NAT gateway. You can create a NAT gateway in the same subnet, update the route table to point to the NAT gateway, and then remove the NAT instance. If you reuse the Elastic IP address, you must first disassociate it from the NAT instance before associating it with the NAT gateway.
