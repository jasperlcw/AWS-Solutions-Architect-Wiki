# AWS Resource Access Manager (AWS RAM)
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html
> Collected: 2026-04-09
> Published: Unknown

AWS Resource Access Manager (AWS RAM) helps you securely share your
   resources across AWS accounts, within your organization or organizational units (OUs) in AWS
   Organizations, and with IAM roles and IAM users for supported resource types. You can use
   AWS RAM to share transit gateways, subnets, AWS License Manager license configurations, Amazon Route 53
   Resolver rules, and more resource types.

  Many organizations use multiple accounts to create administrative or billing isolation, and
   to limit the impact of errors. With AWS RAM, you don't need to create duplicate resources in
   multiple AWS accounts. This reduces the operational overhead of managing resources in every
   account that you own. Instead, in your multi-account environment, you can create a resource once,
   and use AWS RAM to share that resource across accounts by creating a resource share. When you
   create a resource share, you select the resources to share, choose an AWS RAM managed permission
   per resource type, and specify whom you want to have access to the resources. AWS RAM is available
   to you at no additional charge.

