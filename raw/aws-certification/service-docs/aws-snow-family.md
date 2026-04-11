# AWS Snow Family
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/migration-services.html
> Collected: 2026-04-09
> Published: Unknown

The AWS Snow Family helps customers that need
   to run operations in austere, non-data center environments, and in locations where there's lack
   of consistent network connectivity. The Snow Family comprises AWS Snowball and AWS Snowball Edge, and
   offers a number of physical devices and capacity points, most with built-in computing
   capabilities. These services help physically transport up to exabytes of data into and out of
   AWS. Snow Family devices are owned and managed by AWS and integrate with AWS security,
   monitoring, storage management, and computing capabilities.

    AWS Snowball

    AWS Snowball is the smallest member of
    the AWS Snow Family of edge computing, edge storage, and data transfer devices, weighing in at
    4.5 pounds (2.1 kg) with 8 terabytes of usable storage. The Snowball appliance is ruggedized, secure,
    and purpose-built for use outside of a traditional data center. Its small form factor makes it a
    perfect fit for tight spaces or where portability is a necessity and network connectivity is
    unreliable. You can use Snowball in backpacks on first responders, or for Internet of Things
    (IoT), vehicular, and drone use cases. You can run compute applications at the edge, and you can
    ship the device with data to AWS for offline data transfer, or you can transfer data online
    with AWS DataSync from edge locations.

  Like AWS Snowball Edge, AWS Snowball has multiple layers of security and encryption. You
   can use either of these services to run edge computing workloads, or to collect, process, and
   transfer data to AWS. Snowball is designed for data migration needs up to 8 terabytes per
   device and from space-constrained environments where Snowball Edge devices will not fit.

    AWS Snowball Edge

    AWS Snowball Edge is an edge computing, data migration, and edge storage device.
    Snowball Edge can do local processing and run edge-computing workloads in addition to
    transferring data between your local environment and the AWS Cloud. Each Snowball Edge device
    can transport data at speeds faster than the internet. This transport is done by shipping the
    data in the devices through a regional carrier.

    Snowball Edge devices have five options for device configurations:

    -
        Storage-optimized for data transfer, with up to 80 TB of
      usable storage capacity. They are well suited for local storage and large scale data
      transfer.

-
        Storage-optimized 210 TB, with 210 TB of usable storage
      capacity

-
        Storage-optimized with EC2-compatible compute
       functionality, with up to 80 TB of usable storage capacity, 40 vCPUs, and 80 GB of
      memory for compute functionality

-
        Compute-optimized, with the AMD EPYC Gen2 having the
      most compute functionality with up to 104 vCPUs, 416 GB of memory, and 28 TB of dedicated NVMe
      SSD for compute instances. The AMD EPYC Gen1 has up to 52 vCPUs, 208 GB of memory, 39.5 TB of
      usable storage capacity, and 7.68 TB of dedicated NVMe SSD for compute instances.

        You can use these devices for data collection, machine learning (ML) and processing, and
      storage in environments with intermittent connectivity (such as manufacturing, industrial, and
      transportation) or in extremely remote locations (such as military or maritime operations)
      before shipping them back to AWS.

-
        Compute-optimized with GPU is identical to the
      compute-optimized AMD EPYC Gen1 option, but also includes an installed graphics processing
      unit (GPU). The GPU is equivalent to the one available in the P3 Amazon EC2-compatible instance
      type. You can use these devices for advanced ML workloads and full motion video analysis in
      disconnected environments.

    These devices can also be rack mounted and clustered together to build larger temporary
    installations.

    Snowball supports specific Amazon EC2 instance types and AWS Lambda functions, so you can develop
    and test in the AWS Cloud, then deploy applications on devices in remote locations to collect,
    pre-process, and ship the data to AWS. Common use cases include data migration, data
    transport, image collation, IoT sensor stream capture, and ML.

