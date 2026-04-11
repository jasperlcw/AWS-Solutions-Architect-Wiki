# Amazon Inspector
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Inspector is a new automated vulnerability management
   service that continually scans AWS workloads for software vulnerabilities and unintended
   network exposure. With a few clicks in the AWS Management Console and AWS Organizations, Amazon Inspector can be used across all
   accounts in your organization. Once started, Amazon Inspector automatically discovers running Amazon Elastic Compute Cloud
   (Amazon EC2) instances and container images residing in Amazon Elastic Container Registry (Amazon ECR), at any scale, and
   immediately starts assessing them for known vulnerabilities.

  Amazon Inspector has many improvements over Amazon Inspector Classic. For example, the new Amazon Inspector calculates a highly
   contextualized risk score for each finding by correlating common vulnerabilities and exposures
   (CVE) information with factors such as network access and exploitability. This score is used to
   prioritize the most critical vulnerabilities to improve remediation response efficiency.
   Additionally, Amazon Inspector now uses the widely deployed AWS Systems Manager Agent (SSM Agent) to eliminate the
   need for you to deploy and maintain a standalone agent to run Amazon EC2 instance assessments. For
   container workloads, Amazon Inspector is now integrated with Amazon Elastic Container Registry (Amazon ECR) to support intelligent,
   cost-efficient, and continual vulnerability assessments of container images. All findings are
   aggregated in the Amazon Inspector console, routed to AWS Security Hub CSPM, and pushed through Amazon EventBridge to automate
   workflows such as ticketing.

  All accounts new to Amazon Inspector are eligible for a 15-day free trial to evaluate the service and
   estimate its cost. During the trial, all eligible Amazon EC2 instances and container images pushed to
   Amazon ECR are continually scanned at no cost.

