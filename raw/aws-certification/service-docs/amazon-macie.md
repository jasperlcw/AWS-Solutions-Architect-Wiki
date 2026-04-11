# Amazon Macie
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html
> Collected: 2026-04-09
> Published: Unknown

Amazon Macie is a fully managed data security and data
   privacy service that uses inventory evaluations, machine learning, and pattern matching to
   discover sensitive data and accessibility in your Amazon S3 environment. Macie supports scalable
   on-demand and automated sensitive data discovery jobs that automatically tracks changes to the
   bucket and only evaluates new or modified objects over time. Using Macie, you can detect a large
   and growing list of sensitive data types for many countries and Regions, including multiple types
   of financial data, personal health information (PHI), and personally identifiable information
   (PII), as well as custom types. Macie also continually evaluates your Amazon S3 environment to provide
   an S3 resource summary and security evaluation across all of your accounts. You can search,
   filter, and sort S3 buckets by metadata variables, such as bucket names, tags, and security
   controls like encryption status or public accessibility. For any unencrypted buckets, publicly
   accessible buckets, or buckets shared with AWS accounts outside those you have defined in
   AWS Organizations, you can be alerted to act.

  In the multi-account configuration, a single Macie administrator account can manage all
   member accounts, including the creation and administration of sensitive data discovery jobs
   across accounts with AWS Organizations. Security and sensitive data discovery findings are aggregated in
   the Macie administrator account and sent to Amazon CloudWatch Events and AWS Security Hub CSPM. Now using one account, you
   can integrate with event management, workflow, and ticketing systems or use Macie findings with
   AWS Step Functions to automate remediation actions. You can quickly get started with Macie using the
   30-day trial available to new accounts for S3 bucket inventory and bucket-level evaluation at no
   charge. Sensitive data discovery is not included in the 30-day trial for bucket
   evaluation.

