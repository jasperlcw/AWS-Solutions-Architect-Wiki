# SAA-C03 Migration And Transfer Services
> Sources: AWS Documentation (Per-Service Docs Corpus), 2026-04-09; AWS Documentation (In-Scope Services), 2026-04-09
> Raw: [AWS Application Migration Service](aws-application-migration-service.md); [AWS DataSync](aws-datasync.md); [AWS DMS](aws-dms.md); [AWS Snow Family](aws-snow-family.md); [AWS Transfer Family](aws-transfer-family.md); [In-Scope Services](../../raw/aws-certification/2026-04-09-saa-c03-in-scope-services.md)
> Updated: 2026-04-09

## Overview

Migration and transfer questions are mostly about what is being moved and under what constraints. Servers, databases, online files, offline bulk data, and managed transfer protocols each map to different AWS services, and SAA-C03 often tests whether you can separate these paths cleanly.

## Service Roles

### AWS Application Migration Service

This is the lift-and-shift server migration service. It is the answer when existing servers or VMs need to be replicated into AWS with minimal redesign.

### AWS DMS

AWS DMS is for database migration and ongoing replication with minimal downtime. It is the strongest answer when the prompt centers on database cutover rather than server migration.

### AWS DataSync

DataSync is the online data-transfer option for moving data between on-premises storage and AWS storage services. It fits recurring or accelerated transfer needs over the network.

### AWS Snow Family

Snow Family is the offline or rugged edge option. It appears when bandwidth is insufficient, the data volume is extremely large, or the environment is disconnected or harsh.

### AWS Transfer Family

Transfer Family provides managed file-transfer endpoints using protocols such as SFTP, FTPS, FTP, and AS2. It is not general migration tooling; it is protocol-compatible managed transfer.

## Common Comparisons

- Application Migration Service vs DMS: servers versus databases.
- DataSync vs Snow Family: online transfer versus offline/physical transfer.
- Transfer Family vs DataSync: managed file-transfer protocols versus accelerated storage transfer.

## Exam Heuristics

- If the question says rehost servers, think Application Migration Service.
- If the question says migrate a database with minimal downtime, think DMS.
- If the question says petabytes over limited bandwidth, think Snow Family.
- If legacy partners need SFTP or AS2 endpoints, think Transfer Family.

## See Also

- [SAA-C03 In-Scope Service Catalog](saa-c03-in-scope-service-catalog.md)
- [SAA-C03 Storage Services](saa-c03-storage-services.md)
