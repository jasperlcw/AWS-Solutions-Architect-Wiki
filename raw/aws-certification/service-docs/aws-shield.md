# AWS Shield
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html
> Collected: 2026-04-09
> Published: Unknown

AWS Shield is a managed Distributed Denial of Service
   (DDoS) protection service that safeguards web applications running on AWS. AWS Shield provides
   you with always-on detection and automatic inline mitigations that minimize application downtime
   and latency, so there is no need to engage Support to benefit from DDoS protection. There are two
   tiers of AWS Shield: Standard and Advanced.

   All AWS customers benefit from the automatic protections of AWS Shield Standard, at no
   additional charge. AWS Shield Standard defends against most common, frequently occurring network and
   transport layer DDoS attacks that target your website or applications. When you use AWS Shield Standard
   with Amazon CloudFront and Amazon Route 53, you receive
   comprehensive availability protection against all known infrastructure (Layer 3 and 4) attacks.

   For higher levels of protection against attacks targeting your applications running on
   Amazon Elastic Compute Cloud (Amazon EC2), Elastic Load Balancing (ELB), Amazon CloudFront, and Amazon Route 53 resources, you can subscribe to
   AWS Shield Advanced. In addition to the network and transport layer protections that come with Standard,
   AWS Shield Advanced provides additional detection and mitigation against large and sophisticated
   DDoS attacks, near real-time visibility into attacks, and integration with AWS WAF, a web
   application firewall. AWS Shield Advanced  also gives you 24x7 access to the AWS DDoS Response Team
   (DRT) and protection against DDoS related spikes in your Amazon Elastic Compute Cloud (Amazon EC2), Elastic Load Balancing (ELB),
   Amazon CloudFront, and Amazon Route 53 charges.

  AWS Shield Advanced is available globally on all Amazon CloudFront and Amazon Route 53 edge locations. You
   can protect your web applications hosted anywhere in the world by deploying Amazon CloudFront in front of
   your application. Your origin servers can be Amazon S3, Amazon Elastic Compute Cloud (Amazon EC2), Elastic Load Balancing (ELB), or a custom
   server outside of AWS. You can also enable AWS Shield Advanced directly on an Elastic IP or
   Elastic Load Balancing (ELB) in the following AWS Regions: Northern Virginia, Ohio, Oregon, Northern California,
   Montreal, Sao Paulo, Ireland, Frankfurt, London, Paris, Stockholm, Singapore, Tokyo, Sydney,
   Seoul, Mumbai, Milan, and Cape Town.

