## Crossplane with provider-aws

#### Investigate Scenarios

- As a developer, I would like to create a regional postgres aurora cluster. (WIP)

- As a developer, I would like to create a global postgres aurora cluster.

- As a developer, I would like to create a regional mysql aurora cluster.

- As a developer, I would like to create a global mysql aurora cluster.

### Limits
- Dynamic create multiple base resources -> Not Support
  - eg: 1 instance / 2 instances / 3 instances
- Conditions in composition -> Not Support
  - eg: if/else
- Pass parameters between resources ?

#### Command
- ./bin/compile.sh alpha-usea1-v1

### Bugs:
kubectl describe Cluster.rds.aws.upbound.io postgres-cluster
```
    Last Transition Time:  2023-05-12T06:39:31Z
    Message:               apply failed: creating RDS Cluster (postgres-cluster): InvalidParameterCombination: DBClusterInstanceClass isn't supported for DB engine aurora-postgresql.
```
- https://github.com/hashicorp/terraform-provider-aws/issues/30596
- Command:
  $ aws rds describe-orderable-db-instance-options --engine aurora-postgresql --engine-version "14.6" \
    --query "OrderableDBInstanceOptions[].{DBInstanceClass:DBInstanceClass,SupportedEngineModes:SupportedEngineModes[0]}" --output table