# Amazon FSx (for all types)
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/storage-services.html
> Collected: 2026-04-09
> Published: Unknown

Amazon FSx for Lustre is a fully managed file system
   that is optimized for compute-intensive workloads, such as high performance computing, machine
   learning, and media data processing workflows. Many of these applications require the
   high-performance and low latencies of scale-out, parallel file systems. Operating these file
   systems typically requires specialized expertise and administrative overhead, requiring you to
   provision storage servers and tune complex performance parameters. With Amazon FSx, you can launch and
   run a Lustre file system that can process massive data sets at up to hundreds of gigabytes per
   second of throughput, millions of IOPS, and sub-millisecond latencies.

   Amazon FSx for Lustre is seamlessly integrated with Amazon S3, making it easy to link your long-term
   data sets with your high performance file systems to run compute-intensive workloads. You can
   automatically copy data from S3 to Amazon FSx for Lustre, run your workloads, and then write results
   back to S3. Amazon FSx for Lustre also enables you to burst your compute-intensive workloads from
   on-premises to AWS by allowing you to access your FSx file system over Amazon Direct Connect or
   VPN. Amazon FSx for Lustre helps you cost-optimize your storage for compute-intensive workloads: It
   provides cheap and performant non-replicated storage for processing data, with your long-term
   data stored durably in Amazon S3 or other low-cost data stores. With Amazon FSx, you pay for only the
   resources you use. There are no minimum commitments, upfront hardware or software costs, or
   additional fees.

Amazon FSx for NetApp ONTAP offers the first complete,
   fully managed NetApp file system available in the cloud making it easy for you to migrate or
   extend existing applications to AWS without changing code or how you manage your data . Built on
   NetApp ONTAP, Amazon FSx for NetApp ONTAP provides the familiar features, performance, capabilities, and APIs
   of NetApp file systems with the agility, scalability, and simplicity of a fully managed AWS
   service.

  Amazon FSx for NetApp ONTAP offers high-performance file storage that is broadly accessible from Linux,
   Windows, and macOS compute instances via the industry-standard NFS, SMB, and iSCSI protocols.
   With Amazon FSx for NetApp ONTAP, you get low-cost, fully elastic storage capacity with support for
   compression and deduplication to help you further reduce storage costs. Amazon FSx for NetApp ONTAP file
   systems can be deployed and managed using the AWS Management Console or NetApp Cloud Manager for seamless set
   up and administration.

Amazon FSx for OpenZFS is a fully managed file storage
   service that lets you launch, run, and scale fully managed file systems built on the open-source
   OpenZFS file system. Amazon FSx for OpenZFS makes it easy to migrate your on-premises file
   servers-without changing your applications or how you manage data-and build new high-performance,
   data-driven applications in the cloud.

  Amazon FSx for OpenZFS offers the familiar features, performance, and capabilities of OpenZFS file
   systems with the agility, scalability, and simplicity of a fully managed AWS service.

Amazon FSx for Windows File Server provides a fully managed native
   Microsoft Windows file system so you can easily move your Windows-based applications that require
   file storage to AWS. Built on Windows Server, Amazon FSx provides shared file storage with the
   compatibility and features that your Windows-based applications rely on, including full support
   for the SMB protocol and Windows NTFS, Active Directory (AD) integration, and Distributed File
   System (DFS). Amazon FSx uses SSD storage to provide the fast performance your Windows applications
   and users expect, with high levels of throughput and IOPS, and consistent sub-millisecond
   latencies. This compatibility and performance is particularly important when moving workloads
   that require Windows shared file storage, such as CRM, ERP, and .NET applications, as well as
   home directories.

   With Amazon FSx, you can launch highly durable and available Windows file systems that can be
   accessed from up to thousands of compute instances using the industry-standard SMB protocol.
   Amazon FSx eliminates the typical administrative overhead of managing Windows file servers. You pay
   for only the resources used, with no upfront costs, minimum commitments, or additional fees.

