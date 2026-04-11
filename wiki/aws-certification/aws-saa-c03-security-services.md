# AWS SAA-C03 Security Services
> Sources: User-added clipping, 2026-04-09
> Raw: [AWS SAA-C03 Security Services](../../raw/aws-certification/ai-summarized/AWS SAA-C03 Security Services.md)
> Updated: 2026-04-09

## Overview

This page captures study notes for commonly tested SAA-C03 security, identity, and compliance services. The notes are organized around what problem each service solves in architecture scenarios so they are easier to distinguish under exam pressure.

## Core Service Roles

- Amazon Macie = sensitive data discovery and exposure detection for Amazon S3
- Amazon Cognito = application user authentication and federation
- Amazon Inspector = vulnerability scanning for compute workloads
- Amazon GuardDuty = threat detection based on suspicious behavior and telemetry
- AWS Security Hub = centralized findings dashboard and compliance aggregation
- AWS WAF = application-layer filtering for web requests
- AWS Shield = DDoS protection
- AWS Network Firewall = stateful network traffic inspection inside VPC architectures
- AWS Firewall Manager = centralized policy management for WAF, Shield, and firewall controls across accounts
- AWS Secrets Manager = secure storage and rotation of secrets such as passwords and API keys
- AWS KMS = key management for data encryption
- AWS CloudHSM = dedicated hardware-backed key control for stricter compliance cases
- AWS Artifact = AWS compliance reports and legal agreements
- AWS Audit Manager = automated collection of evidence for auditing your AWS environment
- AWS Directory Service = Active Directory integration for enterprise identities

## Security Detection Vs Prevention

The notes separate these services into useful exam categories:

- Prevention and filtering: AWS WAF, AWS Shield, AWS Network Firewall
- Threat detection: Amazon GuardDuty
- Vulnerability scanning: Amazon Inspector
- Sensitive data discovery: Amazon Macie
- Visibility and aggregation: AWS Security Hub

This is a strong SAA-C03 mental model because exam questions often try to blur the line between "detect a threat," "block traffic," and "identify a weakness."

## Identity And Secret Management

The notes position identity and secret-related services this way:

- Amazon Cognito for customer or application user sign-up, sign-in, and federation
- AWS Directory Service for employee or enterprise Active Directory integration
- AWS Secrets Manager for storing and rotating application secrets
- AWS KMS for encrypting data, including secrets protected by Secrets Manager
- AWS CloudHSM when hardware isolation and full key control are mandatory

## Compliance And Governance

The notes distinguish:

- AWS Artifact for downloading AWS's own compliance documents
- AWS Audit Manager for collecting evidence about your use of AWS
- AWS Security Hub for operational security findings and benchmark-style visibility

## Exam Heuristics

- Sensitive data in S3 = Macie
- Suspicious API calls, DNS behavior, malicious IP communication = GuardDuty
- CVEs, patching gaps, compute workload weaknesses = Inspector
- One security dashboard across services and accounts = Security Hub
- Social sign-in or app user auth = Cognito
- Store and rotate DB credentials or API secrets = Secrets Manager
- Encrypt data at rest with managed keys = KMS
- Full control of keys in dedicated hardware = CloudHSM
- DDoS protection = Shield
- SQL injection, XSS, or request filtering = WAF
- Stateful VPC traffic inspection = Network Firewall
- Central policy rollout across multiple accounts = Firewall Manager
- Download AWS audit/compliance reports = Artifact
- Automate evidence collection for audits = Audit Manager
