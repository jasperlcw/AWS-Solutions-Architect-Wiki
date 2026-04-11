# Amazon Detective
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Detective makes it easy to analyze,
   investigate, and quickly identify the root cause of potential security issues or suspicious
   activities. Amazon Detective automatically collects log data from your AWS resources and uses machine
   learning, statistical analysis, and graph theory to build a linked set of data that enables you
   to easily conduct faster and more efficient security investigations. Amazon Detective further simplifies
   account management for security operations and investigations across all existing and future
   accounts in an organization using AWS Organizations for up to 1,200 AWS accounts.

  AWS security services such as Amazon GuardDuty, Amazon Macie, and AWS Security Hub CSPM, as well as partner
   security products, can be used to identify potential security issues, or findings. These services
   are really helpful in alerting you when and where there is possible unauthorized access or
   suspicious behavior in your AWS deployment. However, sometimes there are security findings that
   you would like to perform deeper investigations of the events that led to the findings to
   remediate the root cause. Determining the root cause of security findings can be a complex
   process for security analysts that often involves collecting and combining logs from many data
   sources, using extract, transform, and load (ETL) tools, and custom scripting to organize the
   data.

  Amazon Detective simplifies this process by enabling your security teams to easily investigate and
   quickly get to the root cause of a finding. Detective can analyze trillions of events from multiple
   data sources such as Amazon Virtual Private Cloud (VPC) Flow Logs, AWS CloudTrail, and Amazon GuardDuty. Detective uses these events
   to automatically create a unified, interactive view of your resources, users, and the
   interactions between them over time. With this unified view, you can visualize all the details
   and context in one place to identify the underlying reasons for the findings, drill down into
   relevant historical activities, and quickly determine the root cause.

  You can get started with Amazon Detective in just a few clicks in the AWS Management Console. There is no
   software to deploy, or data sources to enable and maintain. You can try Detective at no additional
   charge with a 30-day free trial that is available to new accounts.

