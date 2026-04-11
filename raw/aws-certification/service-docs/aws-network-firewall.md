# AWS Network Firewall
> Source: https://docs.aws.amazon.com/whitepapers/latest/aws-overview/security-services.html
> Collected: 2026-04-09
> Published: Unknown

AWS Network Firewall is a managed service that
   makes it easy to deploy essential network protections for all of your Amazon Virtual Private Clouds (VPCs). The
   service can be setup with just a few clicks and scales automatically with your network traffic,
   so you don't have to worry about deploying and managing any infrastructure. The AWS Network
   Firewall flexible rules engine lets you define firewall rules that give you fine-grained control
   over network traffic, such as blocking outbound Server Message Block (SMB) requests to prevent
   the spread of malicious activity. You can also import rules you've already written in common open
   source rule formats as well as enable integrations with managed intelligence feeds sourced by
   AWS Partners. AWS Network Firewall works together with AWS Firewall Manager so you can build policies based on
   AWS Network Firewall rules and then centrally apply those policies across your VPCs and accounts.

  AWS Network Firewall includes features that provide protections from common network threats. The
   AWS Network Firewall stateful firewall can incorporate context from traffic flows, such as tracking
   connections and protocol identification, to enforce policies such as preventing your VPCs from
   accessing domains using an unauthorized protocol. The AWS Network Firewall intrusion prevention system
   (IPS) provides active traffic flow inspection so you can identify and block vulnerability
   exploits using signature-based detection. AWS Network Firewall also offers web filtering that can stop
   traffic to known bad URLs and monitor fully qualified domain names.

  It's easy to get started with AWS Network Firewall by visiting the Amazon VPC Console to create or import your firewall rules, group them into policies,
   and apply them to the VPCs you want to protect. AWS Network Firewall pricing is based on the number of
   firewalls deployed and the amount of traffic inspected. There are no upfront commitments and you
   pay only for what you use.

