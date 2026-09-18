# Disaster Recovery Basics

Disaster recovery is about restoring service and data after a serious failure.

## Define

- RPO — how much data loss is acceptable
- RTO — how long recovery may take

## Backup layers

Use appropriate combinations of application backups, database backups, filesystem snapshots, and off-site copies.

## Recovery test

A backup that has never been restored is an assumption, not verified recovery.

A practical test cycle is:

    Backup → Isolated restore → Validate data → Validate application → Record result

Keep recovery credentials and procedures available through a secure channel.
