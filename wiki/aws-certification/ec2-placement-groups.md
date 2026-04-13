# EC2 Placement Groups
> Sources: AWS Documentation, Unknown
> Raw: [Placement groups for your Amazon EC2 instances](../../raw/aws-certification/service-docs/ec2-placement-groups.md)
> Updated: 2026-04-13

## Overview

EC2 placement groups are a topology control feature for instance fleets. On SAA-C03, they matter when the question is really about how instances should be positioned relative to one another for latency, failure isolation, or rack-awareness rather than just how many instances to launch.

## Core Decision Lens

- Use a cluster placement group when tightly coupled instances need very low latency and high east-west throughput inside one Availability Zone.
- Use a partition placement group when a large distributed system needs rack-level fault isolation and topology visibility across partitions.
- Use a spread placement group when a small number of critical instances should stay on distinct hardware to reduce correlated failures.
- Do not choose placement groups when the workload requirement is really load balancing, Auto Scaling, or multi-AZ application design by itself. Placement groups influence topology; they do not replace those higher-level patterns.

## The Three Strategies

### Cluster

Cluster placement groups pack instances close together in a single Availability Zone. They are the best fit for HPC-style or tightly coupled workloads where node-to-node traffic dominates and low latency matters more than broad failure distribution.

Important constraints:

- Cluster groups are single-AZ only.
- Capacity can be harder to obtain if you mix instance types or try to add instances later.
- AWS recommends launching the fleet in one request and using the same instance type where possible.
- Single-flow throughput can be higher inside a cluster placement group than outside one, especially with enhanced networking.

### Partition

Partition placement groups divide instances into logical partitions that do not share racks with one another. This makes them useful for replicated systems such as Hadoop, HBase, Cassandra, and Kafka, where you want fault domains that the application can understand.

Important constraints:

- A partition placement group can span multiple Availability Zones in the same Region.
- It supports up to seven partitions per Availability Zone.
- EC2 tries to balance instances across partitions, but does not guarantee perfect distribution.
- Capacity Reservations do not reserve capacity inside partition placement groups.

### Spread

Spread placement groups place each instance on distinct hardware. They are the exam answer when the workload has only a small number of critical instances and the main concern is reducing the chance that a single rack-level failure affects more than one of them.

Important constraints:

- In a Region, rack-level spread groups support up to seven running instances per Availability Zone per group.
- They are better for small critical fleets than for large horizontal scale.
- They support mixing instance types and launching over time more naturally than cluster groups.
- Host-level spread applies only to AWS Outposts.

## Limits And Operational Caveats

- An instance can be in only one placement group at a time.
- Placement groups cannot be merged.
- Dedicated Hosts cannot be launched in placement groups.
- Spot Instances configured to stop or hibernate on interruption cannot be launched in placement groups.
- If EC2 cannot find the required distinct or tightly packed capacity, instance launches can fail until capacity becomes available.
- You can create up to 500 placement groups per Region.

## Capacity Reservation Nuance

Placement groups often show up in exam questions that also mention EC2 capacity guarantees. The key distinction is:

- On-Demand Capacity Reservations can still be used when launching into a placement group.
- For cluster placement groups, AWS recommends explicitly reserving capacity inside the cluster placement group.
- Zonal Reserved Instances are cost instruments, but they do not explicitly reserve capacity in a placement group.
- Capacity Reservations do not reserve capacity in partition or spread placement groups.

This is a common SAA-C03 trap: "discounted pricing" and "guaranteed launch topology" are not the same requirement.

## Shared Placement Groups And Outposts

- Shared placement groups let one AWS account share a placement group with other accounts or AWS Organizations entities through AWS RAM.
- Shared cluster placement groups can pair with VPC peering to preserve low-latency placement across accounts.
- On AWS Outposts, spread placement groups can work at rack or host level, which changes the scaling boundary to the physical racks or hosts present in the Outpost deployment.

## Common SAA-C03 Traps

- Choosing a cluster placement group for a workload that actually needs multi-AZ resilience rather than just low latency.
- Assuming spread placement groups are meant for large fleets instead of small critical sets of instances.
- Missing the seven-partition-per-AZ limit for partition groups or the seven-running-instances-per-AZ limit for regional spread groups.
- Confusing Reserved Instances with actual topology-aware capacity guarantees.
- Treating placement groups as a substitute for load balancers, replication strategy, or Auto Scaling.

## See Also

- [Amazon EC2](amazon-ec2.md)
- [Amazon VPC](amazon-vpc.md)
- [SAA-C03 Compute And Containers Services](saa-c03-compute-and-containers-services.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
