# Placement groups for your Amazon EC2 instances
> Source: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
> Collected: 2026-04-13
> Published: Unknown

Placement groups

To meet the needs of your workload, you can launch a group of *interdependent* EC2 instances into a *placement group* to influence their placement.

Depending on the type of workload, you can create a placement group using one of the following placement strategies:
+ **Cluster** – Packs instances close together inside an Availability Zone. This strategy enables workloads to achieve the low-latency network performance necessary for tightly-coupled node-to-node communication that is typical of high-performance computing (HPC) applications.
+ **Partition** – Spreads your instances across logical partitions such that groups of instances in one partition do not share the underlying hardware with groups of instances in different partitions. This strategy is typically used by large distributed and replicated workloads, such as Hadoop, Cassandra, and Kafka.
+ **Spread** – Strictly places a small group of instances across distinct underlying hardware to reduce correlated failures.

Placement groups are optional. If you don't launch your instances into a placement group, EC2 tries to place the instances in such a way that all of your instances are spread out across the underlying hardware to minimize correlated failures.

**Pricing**
There is no charge for creating a placement group.

**Rules and limitations**

Before you use placement groups, be aware of the following rules:
+ An instance can be placed in one placement group at a time; you can't place an instance in multiple placement groups.
+ You can't merge placement groups.
+ [On-Demand Capacity Reservations](ec2-capacity-reservations.md#capacity-reservations-limits) and [zonal Reserved Instances](reserved-instances-scope.md) allow you to reserve capacity for EC2 instances in Availability Zones. When you launch an instance, if the instance attributes match those specified by an On-Demand Capacity Reservation or a zonal Reserved Instance, then the reserved capacity is automatically used by the instance. This is also true if you launch the instance into a placement group.
+ You can't launch Dedicated Hosts in placement groups.
+ You can't launch a Spot Instance that is configured to stop or hibernate on interruption in a placement group.

**Topics**
+ [Placement strategies](placement-strategies.md)
+ [Create a placement group](create-placement-group.md)
+ [Change instance placement](change-instance-placement-group.md)
+ [Delete a placement group](delete-placement-group.md)
+ [Shared placement groups](share-placement-group.md)
+ [Placement groups on AWS Outposts](placement-groups-outpost.md)

# Placement strategies for your placement groups

You can create a placement group for your EC2 instances using one of the following placement strategies.

## Cluster placement groups

A cluster placement group is a logical grouping of instances within a single Availability Zone. Instances are not isolated to a single rack. A cluster placement group can span peered virtual private networks (VPCs) in the same Region. Instances in the same cluster placement group enjoy a higher per-flow throughput limit for TCP/IP traffic and are placed in the same high-bisection bandwidth segment of the network.

Cluster placement groups are recommended for applications that benefit from low network latency, high network throughput, or both. They are also recommended when the majority of the network traffic is between the instances in the group. To provide the lowest latency and the highest packet-per-second network performance for your placement group, choose an instance type that supports enhanced networking.

We recommend that you launch your instances in the following way:
+ Use a single launch request to launch the number of instances that you need in the placement group.
+ Use the same instance type for all instances in the placement group.

If you try to add more instances to the placement group later, or if you try to launch more than one instance type in the placement group, you increase your chances of getting an insufficient capacity error.

If you stop an instance in a placement group and then start it again, it still runs in the placement group. However, the start fails if there isn't enough capacity for the instance.

If you receive a capacity error when launching an instance in a placement group that already has running instances, stop and start all of the instances in the placement group, and try the launch again. Starting the instances may migrate them to hardware that has capacity for all of the requested instances.

**Rules and limitations**

The following rules apply to cluster placement groups:
+ The following instance types are supported:
  + Current generation instances, except for burstable performance instances (for example, T2), Mac1 instances, and M7i-flex instances.
  + The following previous generation instances: A1, C3, C4, I2, M4, R3, and R4.
+ A cluster placement group can't span multiple Availability Zones.
+ The maximum network throughput speed of traffic between two instances in a cluster placement group is limited by the slower of the two instances.
+ For instances that are enabled for enhanced networking, the following rules apply:
  + Instances within a cluster placement group can use up to 10 Gbps for single-flow traffic. Instances that are not within a cluster placement group can use up to 5 Gbps for single-flow traffic.
  + Traffic to and from Amazon S3 buckets within the same Region over the public IP address space or through a VPC endpoint can use all available instance aggregate bandwidth.
+ You can launch multiple instance types into a cluster placement group. However, this reduces the likelihood that the required capacity will be available for your launch to succeed.
+ We recommend that you reserve capacity explicitly in the cluster placement group by creating an On-Demand Capacity Reservation in the cluster placement group. Note that you can't reserve capacity using zonal Reserved Instances, as they can't reserve capacity explicitly in a placement group.
+ Network traffic to the internet and over a Direct Connect connection to on-premises resources is limited to 5 Gbps for cluster placement groups.

## Partition placement groups

Partition placement groups help reduce the likelihood of correlated hardware failures for your application. When using partition placement groups, Amazon EC2 divides each group into logical segments called partitions. Amazon EC2 ensures that each partition within a placement group has its own set of racks. Each rack has its own network and power source. No two partitions within a placement group share the same racks, allowing you to isolate the impact of hardware failure within your application.

Partition placement groups can be used to deploy large distributed and replicated workloads, such as HDFS, HBase, and Cassandra, across distinct racks. When you launch instances into a partition placement group, Amazon EC2 tries to distribute the instances evenly across the number of partitions that you specify. You can also launch instances into a specific partition to have more control over where the instances are placed.

A partition placement group can have partitions in multiple Availability Zones in the same Region. A partition placement group can have a maximum of seven partitions per Availability Zone. The number of instances that can be launched into a partition placement group is limited only by the limits of your account.

In addition, partition placement groups offer visibility into the partitions. You can see which instances are in which partitions and share this information with topology-aware applications, such as HDFS, HBase, and Cassandra, so they can make better replication decisions.

If you start or launch an instance in a partition placement group and there is insufficient unique hardware to fulfill the request, the request fails. Amazon EC2 makes more distinct hardware available over time, so you can try your request again later.

**Rules and limitations**

The following rules apply to partition placement groups:
+ A partition placement group supports a maximum of seven partitions per Availability Zone. The number of instances that you can launch in a partition placement group is limited only by your account limits.
+ When instances are launched into a partition placement group, Amazon EC2 tries to evenly distribute the instances across all partitions. Amazon EC2 doesn't guarantee an even distribution of instances across all partitions.
+ A partition placement group with Dedicated Instances can have a maximum of two partitions.
+ Capacity Reservations do not reserve capacity in a partition placement group.

## Spread placement groups

A spread placement group is a group of instances that are each placed on distinct hardware.

Spread placement groups are recommended for applications that have a small number of critical instances that should be kept separate from each other. Launching instances in a spread level placement group reduces the risk of simultaneous failures that might occur when instances share the same equipment. Spread level placement groups provide access to distinct hardware, and are therefore suitable for mixing instance types or launching instances over time.

If you start or launch an instance in a spread placement group and there is insufficient unique hardware to fulfill the request, the request fails. Amazon EC2 makes more distinct hardware available over time, so you can try your request again later. Placement groups can spread instances across racks or hosts. Rack level spread placement groups can be used in AWS Regions and on AWS Outposts. Host level spread placement groups can be used with AWS Outposts only.

**Rack level spread placement groups**

A rack level spread placement group can span multiple Availability Zones in the same Region. In a Region, a rack level spread placement group can have a maximum of seven running instances per Availability Zone per group. With Outposts, a rack level spread placement group can hold as many instances as you have racks in your Outpost deployment.

**Host level spread placement groups**

Host level spread placement groups are only available with AWS Outposts. A host spread level placement group can hold as many instances as you have hosts in your Outpost deployment.

**Rules and limitations**

The following rules apply to spread placement groups:
+ A rack spread placement group supports a maximum of seven running instances per Availability Zone. If you need more than seven instances in an Availability Zone, AWS recommends using multiple spread placement groups.
+ Spread placement groups are not supported for Dedicated Instances.
+ Host level spread placement groups are only supported for placement groups on AWS Outposts.
+ In a Region, a rack level spread placement group can have a maximum of seven running instances per Availability Zone per group.
+ Capacity Reservations do not reserve capacity in a spread placement group.

# Create a placement group for your EC2 instances

You can use a placement group to control the placement of instances relative to each other. After you create a placement group, you can launch instances in the placement group.

**Limitation**
You can create a maximum of 500 placement groups per Region.

To create a placement group in the console:
1. Open the Amazon EC2 console.
1. In the navigation pane, choose **Placement Groups**.
1. Choose **Create placement group**.
1. Specify a name for the group.
1. Choose the placement strategy for the group: **Cluster**, **Spread**, or **Partition**.
1. If you chose **Spread**, choose the spread level: **Rack** or **Host**.
1. If you chose **Partition**, enter the number of partitions for the group.
1. Optionally add tags.
1. Choose **Create group**.

CLI examples:

```bash
aws ec2 create-placement-group \
    --group-name my-cluster \
    --strategy cluster \
    --tag-specifications 'ResourceType=placement-group,Tags={Key=purpose,Value=production}'
```

```bash
aws ec2 create-placement-group \
    --group-name HDFS-Group-A \
    --strategy partition \
    --partition-count 5
```

# Change the placement for an EC2 instance

You can change the placement group for an instance as follows:
+ Add an instance to a placement group
+ Move an instance from one placement group to another
+ Remove an instance from a placement group

**Requirement**
Before you can change the placement group for an instance, the instance must be in the `stopped` state.

To change placement in the console:
1. Open the Amazon EC2 console.
1. In the navigation pane, choose **Instances**.
1. Select the instance.
1. Choose **Actions**, **Instance settings**, **Modify instance placement**.
1. For **Placement group**, choose a group or **None**.
1. Choose **Save**.

CLI examples:

```bash
aws ec2 modify-instance-placement \
    --instance-id i-0123a456700123456 \
    --group-name MySpreadGroup
```

```bash
aws ec2 modify-instance-placement \
    --instance-id i-0123a456700123456 \
    --group-name ""
```

# Delete a placement group

If you need to replace a placement group or no longer need one, you can delete it. Before you can delete a placement group, it must contain no instances. You can terminate the instances, move them to another placement group, or remove them from the placement group.

CLI example:

```bash
aws ec2 delete-placement-group --group-name my-cluster
```

# Shared placement groups

Placement group sharing allows you to influence the placement of interdependent instances that are owned by separate AWS accounts. An owner can share a placement group across multiple AWS accounts or within their organization. A participant can launch instances in a placement group that is shared with their account.

A placement group owner can share a placement group with:
+ Specific AWS accounts inside or outside of its organization
+ An organizational unit inside its organization
+ Its entire organization

You can use VPC peering to connect instances owned by separate AWS accounts and get the full latency benefits offered by shared cluster placement groups.

**Rules and limitations**

The following rules and limitations apply when you share a placement group or when a placement group is shared with you.
+ To share a placement group, you must own it in your AWS account. You can't share a placement group that has been shared with you.
+ When you share a partition or spread placement group, the placement group limits do not change.
+ To share a placement group with your organization or an organizational unit in your organization, you must enable sharing with AWS Organizations.
+ In the AWS CLI, you must specify a shared placement group by ID, not by name, unless you are the owner.
+ You are responsible for managing the instances owned by you in a shared placement group.
+ You can't view or modify instances and capacity reservations that are associated with a shared placement group but not owned by you.
+ The ARN of a placement group contains the ID of the account that owns the placement group.

**Required permissions**
+ `ec2:PutResourcePolicy`
+ `ec2:DeleteResourcePolicy`

## Sharing across Availability Zones

Availability Zone names are mapped independently across AWS accounts, so cross-account sharing should use the Availability Zone ID (AZ ID) rather than the account-local AZ name when you need a consistent physical location reference.

## Placement group sharing

To share a placement group, you add it to an AWS RAM resource share. If sharing is enabled inside AWS Organizations, consumers in the organization can access the shared placement group. If the placement group is shared outside the organization, the external AWS account must accept the invitation before using it.

## Placement group unsharing

When the owner unshares a placement group:
+ Other AWS accounts can no longer launch instances or reserve capacity in it.
+ Running instances are disassociated from the placement group but continue running.
+ Capacity reservations are disassociated from the placement group but remain available in the owner's account.

# Placement groups on AWS Outposts

You can create placement groups on AWS Outposts in the same way that you create them in Availability Zones. When you create a spread placement group on an Outpost, you can choose to spread instances across hosts or racks. Spreading across hosts allows the spread strategy to work on a single-rack Outpost.

**Considerations**
+ A rack level spread placement group can hold as many instances as you have racks in your Outpost deployment.
+ A host level spread placement group can hold as many instances as you have hosts in your Outpost deployment.

To use a placement group on an Outpost:
1. Create a subnet on the Outpost.
1. Create a placement group in the Outpost's associated Region.
1. Launch an instance into that placement group using the Outpost subnet.
