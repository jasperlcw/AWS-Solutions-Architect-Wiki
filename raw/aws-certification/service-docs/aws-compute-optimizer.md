# AWS Compute Optimizer
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/management-governance.html
> Collected: 2026-04-09
> Published: Unknown

AWS Compute Optimizer recommends optimal AWS
   resources for your workloads to reduce costs and improve performance by using machine learning to
   analyze historical utilization metrics. Over-provisioning resources can lead to unnecessary
   infrastructure cost, and under-provisioning resources can lead to poor application performance.
   Compute Optimizer helps you choose optimal configurations for three types of AWS resources: Amazon EC2 instances,
   Amazon EBS volumes, and AWS Lambda functions, based on your utilization data.

  By applying the knowledge drawn from Amazon's own experience running diverse workloads in
   the cloud, Compute Optimizer identifies workload patterns and recommends optimal AWS resources. Compute Optimizer
   analyzes the configuration and resource utilization of your workload to identify dozens of
   defining characteristics, for example, if a workload is CPU-intensive, if it exhibits a daily
   pattern, or if a workload accesses local storage frequently. The service processes these
   characteristics and identifies the hardware resource required by the workload. Compute Optimizer infers how
   the workload would have performed on various hardware platforms (such as Amazon EC2 instances types)
   or using different configurations (such as Amazon EBS volume IOPS settings, and AWS Lambda function
   memory sizes) to offer recommendations.

  Compute Optimizer is available to you at no additional charge. To get started, you can opt in to the
   service in the AWS Compute Optimizer Console.

