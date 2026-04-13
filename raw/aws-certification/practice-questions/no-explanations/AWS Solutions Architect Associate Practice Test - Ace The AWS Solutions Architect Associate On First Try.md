---
title: "AWS Solutions Architect Associate Practice Test - Ace The AWS Solutions Architect Associate On First Try"
source: "https://easy-prep.org/aws-solutions-architect-associate-exam-questions/full-length-practice-test"
author:
published:
created: 2026-04-09
description: "Our free AWS Solutions Architect Associate practice tests feature all AWS Solutions Architect Associate test subjects. We recommend taking all practice questions to guarantee your success at your local testing location."
tags:
  - "clippings"
---

Review Your Answers

1\. An error occurs when you are trying to create a VPC in your account. Looking at the console, you see that the region you're trying to create the VPC in already has five VPCs. What should you do to accomplish the task?

A. Configure the VPC to be peered with an existing VPC to get around the five-VPC per-region limit.

B. Contact AWS and explain your need for a higher number of VPCs in the region.

C. Create the VPC in a different region.

D. You can't. Each region can only have five VPCs.

Correct Answer: B

Reasoning: The problem is a regional VPC quota issue, not a connectivity-design issue. VPC peering does not create an additional VPC, so A does not solve the limit. C does not work as the quota per account is 5. D is too absolute because VPC count is treated as a quota constraint rather than a permanent impossibility. Based on the Amazon VPC notes in the wiki, a VPC is the core network boundary in a Region, so if you need another one in that same Region and have already reached the current quota, the right move is to request an increase from AWS.



2\. The type of service associated with Amazon Athena is `_________`.

A. Storage services.

B. Compute services.

C. Analytic services.

D. Networking services.

Correct Answer: C

Reasoning: The LLM wiki classifies Amazon Athena as part of the analytics stack, not storage, compute, or networking. In the wiki's analytics notes, Athena is positioned as the serverless SQL engine for querying data in S3 and as the query-and-analysis layer in common analytics architectures. That makes C the best answer because Athena is used for analytics over data, especially ad hoc SQL analysis of S3-backed datasets.



3\. The default VPC created by AWS is public. Is this **CORRECT**?

A. Yes.

B. No.

C. Only if you set it to be public at creation time.

D. Only for traffic over port 80.

Correct Answer: A



4\. Which of the following statement is **CORRECT**?

A. Both security groups and NACLs are stateless.

B. Security groups are stateless and NACLs are stateful.

C. Security groups are stateful and NACLs are stateless.

D. Both security groups and NACLs are stateful.

Correct Answer: C

Reasoning: Any change applied to a security group's inbound rule can also affect the outbound rule, for example if a security group self references itself. 


5\. What is the reason to choose a NAT instance over a NAT gateway?

A. NAT instances auto-size to accommodate traffic increases, while NAT gateways do not.

B. You wouldn't; NAT gateways are, in general, a better solution than NAT instances.

C. NAT instances are faster than NAT gateways.

D. NAT instances are automatically kept updated with patches by AWS, while NAT gateways are not.

Correct Answer: B

Reasoning: NAT instances require maintenance as it is an appliance hosted inside an EC2 instance. This requires upkeep while NAT Gateways are set and forget, where it is integrated with the VPC environment.


6\. What is the **MINIMUM** number of subnets an ALB (Application Load Balancer) must be deployed into?

A. Three.

B. Five.

C. Two.

D. One.

Correct Answer: C



7\. The service used at an on-premises site to build a site-to-site VPN connection is `_________`.

A. Customer gateway.

B. Virtual private network.

C. Virtual private gateway.

D. Storage gateway.

Correct Answer: A



8\. What is the benefit of adding a second internet gateway to your VPC?

A. The second VPC can be used to facilitate VPC endpoints with S3 and DynamoDB.

B. You can't have two internet gateways within the same region.

C. You can't add a second internet gateway to a single VPC.

D. Increased network throughput via two channels into the VPC

Correct Answer: C

Note: You can add multiple NAT Gateways for redundancy as they live inside AZ's in a zonal configuration, or can be set as regional, but not for internet gateways as these appliances don't live inside of subnets/AZ's.


9\. The size of the default subnet in each availability zone within the default VPC is `_________`.

A. /16

B. /24

C. /28

D. /20

Correct Answer: D



10\. What is **MOST** suitable for OLAP?

A. Redshift.

B. Aurora.

C. ElastiCache.

D. DynamoDB.

Correct Answer: A

Reasoning: OLAP means online analytical processing. Redshift is a data warehouse that is optimized for columnar processing for analytics instead of row/transactional processing like in a traditional production database for an app. Aurora is relational application storage, ElastiCache is a performance layer, and DynamoDB is an operational NoSQL database rather than an analytical warehouse.



11\. What is the number of internet gateways each VPC can have?

A. Two.

B. One for each AZ in which the VPC exists.

C. One.

D. Three.

Correct Answer: C



12\. In which case should AWS Direct Connect be used instead of Snowball?

A. If you have less than 50 TB of data to transfer, use Snowball.

B. AWS Direct Connect is usually a better option than Snowball.

C. AWS Direct Connect is almost never a better option than Snowball.

D. If you have more than 50 TB of data to transfer, use Snowball.

Correct Answer: B

Note: Snowball is usually the better option if you don't have Direct Connect set up, where transferring large amounts of data over VPN on the public internet could easily fail. The public internet has too many points of failure, whereas with Direct Connect, there is a direct connection with AWS over a dedicated line. 



13\. You want to build out storage for an application that you anticipated growing in size exponentially over the next 12 months. Which S3 storage class would you use?

A. S3-IA.

B. There is not enough information to make a good decision.

C. S3 standard.

D. Amazon Glacier.

Correct Answer: B

Reason: There needs to be more information, specifically as to how often these objects will be accessed over the coming months of years to form a plan for moving files into a respective storage class.



14\. You have an Oracle installation using a custom geospatial plug-in. How would you set up Oracle to ensure the maximum throughput for database operations once those operations are begun by the plug-in?

A. Set up Oracle using RDS with provisioned IOPS.

B. Install Oracle on an EC2 instance with a magnetic EBS volume.

C. Set up Oracle using RDS with magnetic storage.

D. Install Oracle on an EC2 instance with a provisioned IOPS EBS volume.

Correct Answer: D



15\. You would like to add a small group of developers located in a different region than your main development office. What is the **BEST** way to handle scaling out users and permissions to this new region?

A. Create the new users in the primary region, set up IAM replication, and then apply correct permissions to the replicated users in the new region.

B. Create the new users and they will apply to all regions.

C. Create the new users in the second region.

D. Create the new users in the primary region and then replicate them to the new region.

Correct Answer: B

Reason: IAM Users and Roles are not region-specific, but the resources referened like S3 buckets or Load Balancers might be, so use caution.


16\. Policy documents are written in which of the following languages?

A. Node.js.

B. JSON.

C. Ruby.

D. JavaScript.

Correct Answer: B



17\. You have a number of large PDF files stored in an RDS instance used by a company's geographically distributed user base. These PDFs are accessed infrequently, but need to respond quickly to requests whenever they are accessed. As the company's user base has increased, the load is beginning to overwhelm the database. To improve database performance, what is the **BEST** option?

A. Install ElastiCache in front of the database.

B. Set up a CloudFront distribution.

C. Create read replicas across the regions in which the user base accesses the application.

D. Consider installing a storage gateway with stored volumes at the customer's onpremises site.

Correct Answer: C

Reason: It would not be A because this is not a frequent high performance scenario like a production app, so it is not a Redis like caching problem. Elasticache would technically work, but is not the best option because the large PDFs would be stored in RAM, which could be a significant cost (RAM is a lot more expensive than traditional storage). Cloudfront is a CDN that doesn't necessarily fit this use case, and Storage Gateway is a link to an S3 bucket, not RDS.


18\. You have a primary database set up to use read replicas running on an instance in US East 1. You have three read replicas also in US East 1 and two more replicas in US West 2. You are getting an error when trying to create a new replica in EU West 1. To resolve this problem and create a new read replica in EU West 1, what should you do?

A. Contact AWS about raising the number of reading replicas allowed from 5 to 8.

B. Turn off one of the read replicas in US East 1 and then you can create the instance in EU West 1.

C. Turn on the Multi-AZ option for your primary instance.

D. You can't create the replica in EU West 1. Instead, create the replica in another US region to avoid regulations about reading replicas in the EU.

Correct Answer: B



19\. What is MFA?

A. Multi-Factor Authorization.

B. Multi-Fraction Authorization.

C. Multi-Factor Authentication.

D. Multi-Fraction Authentication.

Correct Answer: C



20\. The database that supports read replicas is `_________`.

A. All of these answers.

B. MySQL.

C. PostgreSQL.

D. MariaDB.

Correct Answer: A

Reason: AWS RDS supports read replicas, and all three database engines fall under the RDS umbrella.



21\. What is IAM?

A. Information and Access Management.

B. Identity and Access Management.

C. Identity and Authorization Management.

D. Improved Access Management.

Correct Answer: B



22\. Choose an invalid weight for a weighted routing policy.

A. 1

B. 255

C. 125

D. These weights are all valid.

Correct Answer: D



23\. The shortest expiration period allowed for a CloudFront edge location is `_________`.

A. 30 seconds.

B. 0 seconds.

C. 5 seconds.

D. 1 minute.

Correct Answer: B



24\. You want to route traffic to a single web server. Which of the following routing policies is ideal?

A. Simple routing.

B. Multivalue answer routing.

C. Latency-based routing.

D. Weighted routing.

Correct Answer: A

Reason: Multivalue answer routing is when a DNS server returns multiple IP addresses to distribute load across different endpoints, latency-based routing is for geolocation-based performance optimization, weighted routing requires a load balancer and can be useful for scenarios like A-B testing. Note that multivalue answer routing via Route 53 is not a replacement for a load balancer.


25\. In relation to the standard data transfer charge, how much will you be charged when replicating data from a primary RDS instance to a secondary one?

A. Your data will be transferred at half of the standard data transfer charge.

B. Your data will be transferred at the standard data transfer charge.

C. There is no charge for primary-to-secondary data replication.

D. Your data will be transferred at half of the standard data transfer charge up to 1 GB of transfer per day and then additional data at the standard data transfer charge.

Correct Answer: C



26\. You are consulting for a company that wants to transfer its 85TB data store into S3. It is willing to upload small batches of data into S3 every night but is concerned that overseas customers using its other applications might experience network latency during the data migration. What solution should you recommend?

A. Enable Transfer Acceleration on S3.

B. Set up a VPN that uses a virtual private gateway for transferring the data.

C. Snowball.

D. Direct Connect.

Correct Answer: C

Reason: Network latency during data transfer to S3 seems like a bandwidth issue. Transfer Acceleration and VPN won't necessary solve that issue. Direct connect is a long term solution for if a company wants to directly link their on-prem services with AWS, leaving Snowball to be the last and correct option.


27\. All of the following are valid attributes for an elastic network interface **EXCEPT** `_________`.

A. A routing table.

B. An IPv6 address.

C. A source/destination check flag.

D. An IPv4 address.

Correct Answer: A

Reason: Routing tables belong to a VPC, while ENIs are more instance level/EC2 level.


28\. The CIDR block 0.0.0.0/0 represents `_________`.

A. The entire Internet, limited to IPv4 addresses.

B. The entire Internet.

C. The entire Internet, limited to IPv6 addresses.

D. Inbound traffic from the entire Internet.

Correct Answer: A



29\. The default security on a newly created S3 bucket is `_________`.

A. Completely private, reads and writes are disallowed.

B. There is no policy defined to allow ECS tasks to access S3.

C. Read and write is permitted from EC2 instances in the same region.

D. Read-only.

Correct Answer: A



30\. All of the following are valid means of working with an Amazon EBS snapshot **EXCEPT** `_________`.

A. The AWS API.

B. The AWS CLI.

C. The AWS EBS management tool.

D. The AWS console.

Correct Answer: C

Reason: AWS EBS management tool doesn't seem to be a service that AWS actually offers.


31\. What is the number of network interfaces can a single instance have?

A. One and only one.

B. At least two, up to five.

C. One or more.

D. None.

Correct Answer: C



32\. All of the following are reasons to attach numerous network interfaces to an instance **EXCEPT** `_________`.

A. You are creating a management network.

B. You are attempting to increase network throughput to the instance.

C. You need a high-availability solution and have a low budget.

D. You need dual-homed instances.

Correct Answer: B

Reason: From the AWS docs, Attaching multiple network interfaces to an instance is useful when you need the following:

    A management network.

    Network and security appliances.

    Dual-homed instances with workloads in different subnets or VPCs.

    A low-budget, high-availability solution.



33\. A bastion host is used to connect to which of the following?

A. A private instance in a private subnet.

B. A public instance in a private subnet.

C. A private instance in a public subnet.

D. A public instance in a public subnet.

Correct Answer: A

Reason: Instance state is determined by the subnet state, so it cannot be B or C. By definition of a bastion server, it has to be A.


34\. According to the AWS well-architected framework, which of the following is **NOT** one of the six pillars in the cloud?

A. Performance efficiency.

B. Cost optimization.

C. Operational excellence.

D. Organizational blueprint.

Correct Answer: D

Reason: The AWS well-architect framework defines the following six pillars: operational excellence, security, reliability, performance efficiency, cost optimization, and sustainability.


35\. What encryption service do encrypted EBS volumes use?

A. KMS.

B. S3-C.

C. S3-KMS.

D. Customer-managed keys.

Correct Answer: A



36\. What is the number of security groups that you can attach to a single instance in a VPC?

A. None, security groups aren't attached to instances.

B. One or more.

C. Two or more.

D. One.

Correct Answer: B



37\. What is the reason why you might use an elastic IP address?

A. You want to mask the failure of an instance to network clients.

B. You need an IPv6 address for a specific instance.

C. You need an IPv4 address for a specific instance.

D. You want to avoid making changes to your security groups.

Correct Answer: A

Reason: C and D is also plausible, but for any complex workloads you probably wouldn't attach elastic IP addresses to an EC2 instance unless for some reason you wanted to run a custom NginX instance over an AWS native load balancer (note that for multiple choice answers, C and D should probably be correct choices). B is not a valid answer as elastic IP addresses don't come in iPv6 since there is an abundance of these addresses.


38\. Concerning internet gateways, all of the following statements are true **EXCEPT** `_________`.

A. They scale horizontally.

B. They scale vertically.

C. They are automatically redundant.

D. They are automatically highly available.

Correct Answer: B



39\. Would SSH traffic be allowed if all of the following inbound rules existed on a custom NACL?  
Rule #800 // HTTP // TCP // 80 // 0.0.0.0/0 -> ALLOW  
Rule #100 // HTTPS // TCP // 443 // 0.0.0.0/0 -> ALLOW  
Rule \* // All // All // All // 0.0.0.0/0 -> DENY  
Rule #130 // RDP // TCP // 3389 // 192.0.2.0/24 -> ALLOW

A. Yes, SSH is included in the HTTPS protocol.

B. Yes, SSH is included as a default protocol on NACLs.

C. Only if the SSH access permission in IAM is granted.

D. No.

Correct Answer: D

Note that for NACL rules, lowest numbered rules are evaluated first. There isn't a rule that belongs to port 22 though, so the correct answer is D.


40\. You have an application which has a 200 GB database running on an EC2 instance. Because of a custom spatial plug-in, you cannot move the database to RDS. The application is currently peaking in the morning and the evening, but the peaks are small and usage throughout the day is low. What storage type would you use to ensure solid performance but keep costs low?

A. EBS with a provisioned IOPS SSD.

B. EFS.

C. EBS with a General Purpose SSD.

D. EBS with a magnetic HDD.

Correct Answer: C

Reason: Ensuring solid performance while keeping costs low means finding a middle ground, and the option for that is a General Purpose SSD (gp2), hence the correct answer being C.


41\. You are migrating a large on-premises application suite to AWS. Your company has invested a large amount of time and money in Chef for configuration and management and doesn't want this investment to be wasted. What could you use to preserve this functionality and keep costs low?

A. CloudTrail.

B. OpsWorks.

C. CloudWatch.

D. Service Catalog.

Correct Answer: B

Reason: AWS OpsWorks uses Chef configuration files to provision resources, hence B being the correct answer.



42\. AWS Cost Explorer is `_________`.

A. An analytics tool for evaluating instance usage.

B. An analytics tool for managing AWS costs over time.

C. An analytics tool for evaluating RDS usage.

D. An analytics tool for managing application deployments.

Correct Answer: B



43\. Which AWS service is a scalable, cost-effective, and highly durable solution for storing flat files?

A. DynamoDB.

B. Kinesis.

C. S3.

D. Aurora.

Correct Answer: C



44\. You want to transfer 50 TB of data into S3 and avoid lengthy network exchanges and network saturation. Which of the following options is the **LEAST** expensive large-scale data transfer?

A. S3 Transfer Acceleration.

B. Storage Gateway.

C. Snowball.

D. Glacier.

Correct Answer: C



45\. The number of availability zones a spread placement group can be stretched is `_________`.

A. One or more.

B. One.

C. Placement groups are not in availability zones.

D. Two or more.

Correct Answer: A



46\. You are new on a project that makes heavy use of AWS. Reducing costs and identifying security risks are your first priorities. To scan the current environment and set initial priorities for change, what tool could you use?

A. Trusted Advisor.

B. CloudTrail.

C. AWS Organizations.

D. AWS Directory Server.

Correct Answer: A



47\. All of the following would incur a charge **EXCEPT** `_________`.

A. Importing data to S3 via Transfer Acceleration.

B. Distributing data via CloudFront to an Internet client in a different region.

C. Transferring data from an EC2 instance to an instance in another region.

D. Transferring data from S3 to CloudFront.

Correct Answer: D



48\. What is the **MOST** cost-effective access to compute resources?

A. On-demand instances.

B. Reserved instances.

C. Spot instances.

D. Dedicated hosts.

Correct Answer: C



49\. Your task is to reduce the costs associated with a large fleet of EC2 instances that currently run multiple custom processes which collect and collate data from a number of streaming data sources outside your network. To replace these instances, what AWS managed service would you use?

A. Kinesis.

B. CloudFront.

C. SDM.

D. CloudFormation.

Correct Answer: A



50\. `_________` is an AWS support plan.

A. Free.

B. Standard.

C. Enterprise.

D. Small teams.

Correct Answer: C



51\. You need to back up a large archive of documents which will be accessed very infrequently, if at all. However, the documents must be delivered within 10 minutes of a retrieval request when being accessed. What is the **LEAST** expensive option to store these documents?

A. S3.

B. S3-IA.

C. Glacier.

D. Glacier with expedited retrieval.

Correct Answer: D



52\. Which tool allows you to cut off all access to your S3 buckets when a certain cost threshold is met?

A. AWS Cost Explorer.

B. AWS Budgets.

C. AWS Trusted Advisor.

D. None of these answers.

Correct Answer: D



53\. The managed service that coordinates activities between different applications is `_________`.

A. SQS.

B. SNS.

C. SWF.

D. S3.

Correct Answer: C



54\. The AWS service abbreviated as ECS stands for `_________`.

A. Encapsulated Container Service.

B. Elastic Computer Service.

C. Elastic Container Service.

D. Elastic Compute Service.

Correct Answer: C



55\. Route 53 hosts and manages your domain. What should you do to create a new subdomain and point it to a fleet of EC2 instances behind an application load balancer?

A. Create an A record pointing at the IP address of the ALB.

B. Create a CNAME record pointing at the URL of the ALB.

C. Create an A record and configure it as an alias to the ALB.

D. Set the ALB to send a redirect header to clients with the IP addresses of the currently active EC2 instances.

Correct Answer: C



56\. A VPC peering connection is `_________`.

A. One-to-many between VPCs.

B. One-to-one between VPCs.

C. One-to-one between subnets.

D. One-to-many between subnets.

Correct Answer: B



57\. Does Route 53 support zone apex records?

A. Yes, but only for domains hosted on AWS.

B. No.

C. Yes, for all domains.

D. Yes, but only for services hosted on AWS.

Correct Answer: C



58\. The managed services that guarantees single assignment of a message is `_________`.

A. S3.

B. SNS.

C. SQS.

D. SWF.

Correct Answer: D



59\. The managed service that calls the messages it receives notifications is `_________`.

A. SQS.

B. S3.

C. SNS.

D. SWF.

Correct Answer: C



60\. The managed services that calls the messages it receives tasks is `_________`.

A. SQS.

B. SNS.

C. SWF.

D. S3.

Correct Answer: C



61\. The content on your website is mostly static content, but you are adding a new section driven by an EC2 instance fleet behind an Elastic Load Balancer. Which DNS record set would you use to create a subdomain and direct all traffic to that subdomain toward the ELB?

A. SOA.

B. MX.

C. CNAME.

D. AAAA.

Correct Answer: C



62\. The sets of services used in a typical AWS container stack are `_________`.

A. ECS, EMR, EC2.

B. ECR, ECS, S3.

C. ECR, ECS, EC2.

D. Fargate, ECS, S3.

Correct Answer: C



63\. You are using an SQS queue in your web application. You are able to confirm that messages in the queue are being picked up by application instances for processing, but then nothing occurs for over 12 hours. After that period of time, the message appears in the queue again and processing restarts. What might be the problem?

A. SQS messages expire every 12 hours and must be re-entered into the queue. The time that the message is invisible triggers the queue to ask for and receive the message from the original sender.

B. Your SQS queue needs to be restarted; it is likely not correctly queuing messages. The polling interval is also set too high, causing the long lack of visibility of the message.

C. Processing is failing, or not completing, in the application instance. The message disappears because the SQS queue keeps it â€œinvisibleâ€ for 12 hours while it is being processed. The message is then returned to the queue for processing if not handled prior to that timeout.

D. The SQS queue has a visibility timeout that is set too high. The timeout should be reduced so that application instances can process the message more quickly.

Correct Answer: C



64\. The number of domain names you can manage using Route 53 is \_\_\_.

A. 50

B. 100, but you can raise that limit by contacting AWS support.

C. 50, but you can raise that limit by contacting AWS support.

D. Unlimited

Correct Answer: C



65\. Choose a **INCORRECT** statement about peered VPCs.

A. Traffic can flow in both directions between peered VPCs by default.

B. Both VPCs will automatically have routing set up when the connection is created.

C. Both VPCs do not need to be within the same region.

D. Both VPCs do not need to be in the same AWS account.

Correct Answer: B
