# SAA-C03 Cost Management Services
> Sources: AWS Documentation (Per-Service Docs Corpus), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09
> Raw: [AWS Budgets](aws-budgets.md); [AWS Cost and Usage Report](aws-cost-and-usage-report.md); [AWS Cost Explorer](aws-cost-explorer.md); [Savings Plans](savings-plans.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-09

## Overview

AWS cost-management services each solve a different part of the cost story: alerts, interactive analysis, raw billing export, and discounted pricing commitments. The exam often tests them together because they sound related while serving different decision layers.

## Service Roles

### AWS Budgets

Budgets is the alerting and threshold tool. Use it when AWS asks how to set guardrails around cost, usage, RI utilization, or Savings Plans coverage.

### AWS Cost Explorer

Cost Explorer is the interactive analysis and forecasting tool. It is the answer when the requirement is to inspect spending patterns, trends, or projected spend.

### AWS Cost and Usage Report

The Cost and Usage Report is the detailed raw billing dataset. It fits deeper analysis, chargeback, custom reporting, or downstream processing in services such as Amazon S3, Athena, or QuickSuite-style dashboards.

### Savings Plans

Savings Plans are pricing commitments for predictable compute usage. They are not reporting tools; they are cost-optimization mechanisms.

## Common Comparisons

- Budgets vs Cost Explorer: alerts and thresholds versus interactive analysis.
- Cost Explorer vs Cost and Usage Report: summarized exploration versus raw granular billing data.
- Savings Plans vs the others: discount commitment mechanism versus reporting or alerting.

## Exam Heuristics

- If the question says "alert me before I overspend," think Budgets.
- If the question says "analyze or forecast spend," think Cost Explorer.
- If the question says "export detailed billing data for deep analysis," think Cost and Usage Report.
- If the question says "reduce compute costs with commitment-based pricing," think Savings Plans.

## See Also

- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [AWS Certified Solutions Architect - Associate (SAA-C03)](solutions-architect-associate-saa-c03.md)
