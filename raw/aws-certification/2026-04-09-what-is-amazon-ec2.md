# What is Amazon EC2?
> Source: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Elastic Compute Cloud (Amazon EC2) provides on-demand, scalable computing capacity in the Amazon Web Services (AWS) Cloud. Using Amazon EC2 reduces hardware costs so you can develop and deploy applications faster. You can use Amazon EC2 to launch as many or as few virtual servers as you need, configure security and networking, and manage storage. You can add capacity (scale up) to handle compute-heavy tasks, such as monthly or yearly processes, or spikes in website traffic.

When usage decreases, you can reduce capacity (scale down) again.

An EC2 instance is a virtual server in the AWS Cloud. When you launch an EC2 instance, the instance type that you specify determines the hardware available to your instance. Each instance type offers a different balance of compute, memory, network, and storage resources.

## Features of Amazon EC2

Amazon EC2 provides the following high-level features:

- Instances: virtual servers.
- Amazon Machine Images (AMIs): preconfigured templates for your instances that package the components you need for your server, including the operating system and additional software.
- Instance types: various configurations of CPU, memory, storage, networking capacity, and graphics hardware for your instances.
- Amazon EBS volumes: persistent storage volumes for your data using Amazon Elastic Block Store.
- Instance store volumes: storage volumes for temporary data that is deleted when you stop, hibernate, or terminate your instance.
- Key pairs: secure login information for your instances. AWS stores the public key and you store the private key.
- Security groups: a virtual firewall that allows you to specify the protocols, ports, and source IP ranges that can reach your instances, and the destination IP ranges to which your instances can connect.

Amazon EC2 supports the processing, storage, and transmission of credit card data by a merchant or service provider, and has been validated as being compliant with PCI DSS.

## Related services

### Services to use with Amazon EC2

- Amazon EC2 Auto Scaling: helps ensure you have the correct number of EC2 instances available to handle the load for your application.
- AWS Backup: automate backing up your EC2 instances and attached Amazon EBS volumes.
- Amazon CloudWatch: monitor your instances and Amazon EBS volumes.
- Elastic Load Balancing: automatically distribute incoming application traffic across multiple instances.
- Amazon GuardDuty: detect potentially unauthorized or malicious use of your EC2 instances.
- EC2 Image Builder: automate the creation, management, and deployment of customized, secure, and up-to-date server images.
- AWS Launch Wizard: size, configure, and deploy AWS resources for third-party applications without having to manually identify and provision individual AWS resources.
- AWS Systems Manager: perform operations at scale on EC2 instances with a secure end-to-end management solution.

### Additional compute services

- Amazon Lightsail: deploy websites or web applications quickly for a predictable monthly price.
- Amazon ECS: deploy, manage, and scale containerized applications on a cluster of EC2 instances.
- Amazon EKS: run Kubernetes applications on AWS.

## Access Amazon EC2

You can create and manage Amazon EC2 instances using the following interfaces:

- Amazon EC2 console
- AWS Command Line Interface
- CloudFormation
- AWS SDKs
- AWS Tools for PowerShell
- Query API

Amazon EC2 supports creating resources using CloudFormation templates in JSON or YAML format.

## Pricing for Amazon EC2

Amazon EC2 provides the following pricing options:

- Free Tier
- On-Demand Instances: pay by the second, with a minimum of 60 seconds, with no long-term commitments or upfront payments.
- Savings Plans: commit to a consistent amount of usage, in USD per hour, for a term of 1 or 3 years.
- Reserved Instances: commit to a specific instance configuration, including instance type and Region, for a term of 1 or 3 years.
- Spot Instances: request unused EC2 instances to significantly reduce cost.
- Dedicated Hosts: use a physical EC2 server dedicated for your use, either On-Demand or as part of a Savings Plan.
- On-Demand Capacity Reservations: reserve compute capacity for EC2 instances in a specific Availability Zone for any duration of time.
- Per-second billing

The page also points to AWS Pricing Calculator, AWS Trusted Advisor, and AWS Cost Explorer as cost-estimation and optimization tools.

## Resources

The document links to additional AWS learning and support resources, including EC2 features pages, AWS re:Post, AWS Skill Builder, tutorials, support, and Windows on AWS resources.
