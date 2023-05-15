## Crossplane with provider-aws

#### Investigate Scenarios

- As a developer, I would like to create a regional postgres aurora cluster. (WIP)

- As a developer, I would like to create a global postgres aurora cluster.

- As a developer, I would like to create a regional mysql aurora cluster. (WIP)

- As a developer, I would like to create a global mysql aurora cluster.

### Limits
- Dynamic create multiple base resources -> Not Support
  - eg: 1 instance / 2 instances / 3 instances
- Conditions in composition -> Not Support
  - eg: if/else
- Hard to debug when we have multiple resources in one Composition.

### Command
- ./bin/compile.sh alpha-usea1-v1

### Bugs:
`kubectl describe Cluster.rds.aws.upbound.io postgres-cluster`

```
    Last Transition Time:  2023-05-12T06:39:31Z
    Message:               apply failed: creating RDS Cluster (postgres-cluster): InvalidParameterCombination: DBClusterInstanceClass isn't supported for DB engine aurora-postgresql.
```

`kubectl describe Cluster.rds.aws.upbound.io mysql-cluster`
```
    Type:                  Synced
    Last Transition Time:  2023-05-15T00:15:28Z
    Message:               apply failed: creating RDS Cluster (mysql-cluster): InvalidParameterCombination: DBClusterInstanceClass isn't supported for DB engine aurora-mysql.
                           status code: 400, request id: ef95f2eb-bc1d-4516-8f59-6a151afad51b:
    Reason:                ApplyFailure
    Status:                False
```

- https://github.com/hashicorp/terraform-provider-aws/issues/30596

### Errors:

```
2023-05-12T04:52:53Z	DEBUG	events	cannot run plan: plan failed: Instance cannot be destroyed: Resource aws_db_parameter_group.regional-postgres-deleteme-v1-4gr79-tpwhc has lifecycle.prevent_destroy set, but the plan calls for this resource to be destroyed. To avoid this error and continue with the plan, either disable lifecycle.prevent_destroy or reduce the scope of the plan using the -target flag.	{"type": "Warning", "object": {"kind":"ParameterGroup","name":"regional-postgres-deleteme-v1-4gr79-tpwhc","uid":"9983e2fd-688e-41e6-8235-d79e19e34c0c","apiVersion":"rds.aws.upbound.io/v1beta1","resourceVersion":"224178782"}, "reason": "CannotObserveExternalResource"}
```
