# pgdumper
pg_dump for Kubernetes in Alpine, crond enabled

# Features
* attach your own customized crontabs, check example/pgdumper-crontabs-root.yaml
* backup to Persistenct Volume.
* customize your backup script, check example/pgdumper-backup.yaml
* able to do remotely from another cluster.  password enabled.
* allow you to specify hostname, "recommended to do backup from standby pod, so that it doesn't give burden to master pod.
