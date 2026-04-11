# IAM
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html
> Collected: 2026-04-09
> Published: Unknown

AWS Identity and Access Management (IAM) enables you to securely control
   access to AWS services and resources for your AWS users, groups, and roles. Using IAM, you
   can create and manage fine-grained access controls with permissions, specify who can access which
   services and resources, and under which conditions. IAM allows you to do the following:

- You manage AWS permissions for your workforce users and workloads in AWS IAM Identity Center (IAM Identity Center). IAM Identity Center allows you to
     manage user access across multiple AWS accounts. With just a few clicks, you can enable a
     highly available service, easily manage multi-account access and the permissions to all of your
     accounts in AWS Organizations
     centrally. IAM Identity Center includes built-in SAML integrations to many business applications, such as
     Salesforce, Box, and Microsoft Office 365. Further, you can create Security Assertion Markup Language (SAML)
     2.0 integrations and extend single sign-on access to any of your SAML-enabled applications.
     Your users simply sign in to a user portal with credentials they configure or using their
     existing corporate credentials to access all their assigned accounts and applications from one
     place.

- Manage single-account IAM permissions: You can specify access to AWS resources using permissions. Your
     IAM entities (users, groups, and roles) by default start with no permissions. These
     identities can be granted permissions by attaching an IAM policy that specifies the type of
     access, the actions that can be performed, and the resources on which actions can be performed.
     You can also specify conditions that must be set for access to be allowed or denied.

- Manage single-account IAM roles: IAM roles allows you to delegate access to users or services that normally
     don't have access to your organization's AWS resources. IAM users or AWS services can
     assume a role to obtain a temporary security credential that can be used to make AWS API calls.
     You don't have to share long-term credentials or define permissions for each identity.

