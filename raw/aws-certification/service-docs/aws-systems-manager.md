# AWS Systems Manager
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html
> Collected: 2026-04-09
> Published: Unknown

AWS Systems Manager gives you visibility and control
   of your infrastructure on AWS. Systems Manager provides a unified user interface so you can view
   operational data from multiple AWS services and allows you to automate operational tasks across
   your AWS resources. With Systems Manager, you can group resources, such as Amazon EC2 instances, Amazon S3 buckets, or Amazon RDS instances, by
   application, view operational data for monitoring and troubleshooting, and take action on your
   groups of resources. Systems Manager simplifies resource and application management, shortens the time to
   detect and resolve operational problems, and makes it easy to operate and manage your
   infrastructure securely at scale.

   AWS Systems Manager contains the following tools:

  -
      Resource groups - Lets you create a logical group of resources
     associated with a particular workload such as different layers of an application stack, or
     production versus development environments. For example, you can group different layers of an
     application, such as the frontend web layer and the backend data layer. Resource groups can be
     created, updated, or removed programmatically through the API.

-
      Insights dashboard - Displays operational data that the
     AWS Systems Manager automatically aggregates for each resource group. Systems Manager eliminates the need for you
     to navigate across multiple AWS consoles to view your operational data. With Systems Manager you can
     view API call logs from AWS CloudTrail, resource
     configuration changes from AWS Config, software
     inventory, and patch compliance status by resource group. You can also easily integrate your
      Amazon CloudWatch dashboards, AWS Trusted Advisor
     notifications, and AWS Health Dashboard
     performance and availability alerts into your Systems Manager dashboard. Systems Manager centralizes all
     relevant operational data, so you can have a clear view of your infrastructure compliance and
     performance.

-
      Run command - Provides a simple way of automating common
     administrative tasks such as remotely running shell scripts or PowerShell commands, installing
     software updates, or making changes to the configuration of OS, software, EC2 and instances and
     servers in your on-premises data center.

-
      State Manager - Helps you define and maintain consistent OS
     configurations such as firewall settings and anti-malware definitions to comply with your
     policies. You can monitor the configuration of a large set of instances, specify a
     configuration policy for the instances, and automatically apply updates or configuration
     changes.

-
      Inventory - Helps you collect and query configuration and
     inventory information about your instances and the software installed on them. You can gather
     details about your instances such as installed applications, DHCP settings, agent detail, and
     custom items. You can run queries to track and audit your system configurations.

-
      Maintenance Window - Lets you define a recurring window of
     time to run administrative and maintenance tasks across your instances. This ensures that
     installing patches and updates, or making other configuration changes does not disrupt
     business-critical operations. This helps improve your application availability.

-
      Patch Manager - Helps you select and deploy operating system
     and software patches automatically across large groups of instances. You can define a
     maintenance window so that patches are applied only during set times that fit your needs. These
     capabilities help ensure that your software is always up to date and meets your compliance
     policies.

-
      Automation - Simplifies common maintenance and deployment
     tasks, such as updating Amazon Machine Images (AMIs). Use the Automation feature to apply
     patches, update drivers and agents, or bake applications into your AMI using a streamlined,
     repeatable, and auditable process.

-
      Parameter Store - Provides an encrypted location to store
     important administrative information such as passwords and database strings. The Parameter
     Store integrates with AWS Key Management Service (AWS KMS) to make it easy to encrypt the information you keep in
     the Parameter Store.

-
      Distributor - Helps you securely distribute and install
     software packages, such as software agents. Systems Manager Distributor allows you to centrally store and
     systematically distribute software packages while you maintain control over versioning. You can
     use Distributor to create and distribute software packages and then install them using Systems Manager
     Run Command and State Manager. Distributor can also use AWS Identity and Access Management (IAM) policies to control
     who can create or update packages in your account. You can use the existing IAM policy
     support for Systems Manager Run Command and State Manager to define who can install packages on your
     hosts.

-
      Session Manager - Provides a browser-based interactive shell
     and CLI for managing Windows and Linux EC2 instances, without the need to open inbound ports,
     manage SSH keys, or use bastion hosts. Administrators can grant and revoke access to instances
     through a central location by using AWS Identity and Access Management (IAM)
     policies. This allows you to control which users can access each instance, including the option
     to provide non-root access to specified users. Once access is provided, you can audit which
     user accessed an instance and log each command to Amazon S3
     or Amazon CloudWatch Logs using AWS CloudTrail.

