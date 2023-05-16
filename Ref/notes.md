#### Cluster With Refs

- Subnets
  - dbSubnetGroupName
  - dbSubnetGroupNameRef
  - dbSubnetGroupNameSelector 

- MasterPassword
  - masterPasswordSecretRef

- KmsKey
  - kmsKeyId
  - kmsKeyIdRef
  - kmsKeyIdSelector

### Composition Details

- patches
  - type: `FromCompositeFieldPath` -> `FromCompositeFieldPath` is the default when 'type' is omitted.
  - policy: `Required` 
    - By default a patch from a field path that does not exist is simply skipped until it does. 
    - Use the 'Required' policy to instead block and return an error when the field path does not exist.

- Passing Parameters between resources -> need to be tested
  - https://github.com/upbound/provider-terraform/blob/main/examples/transition/02-composition-tf-and-native/composition.yaml
  - https://pet2cattle.com/2022/03/crossplane-status-across-objects


### Commands
- aws rds describe-db-engine-versions --engine aurora-postgresql --query '*[].[EngineVersion]' --output text > aurora-postgresql-engine.md

- aws rds describe-db-cluster-parameters --db-cluster-parameter-group-name default.aurora-postgresql14 > aurora-postgresql14.md

- aws rds describe-orderable-db-instance-options --engine aurora-mysql --engine-version "8.0.mysql_aurora.3.01.0" --query "OrderableDBInstanceOptions[].{DBInstanceClass:DBInstanceClass,SupportedEngineModes:SupportedEngineModes[0]}" --output table

- aws rds describe-orderable-db-instance-options --engine aurora-postgresql --engine-version "14.6" \
    --query "OrderableDBInstanceOptions[].{DBInstanceClass:DBInstanceClass,SupportedEngineModes:SupportedEngineModes[0]}" --output table


### Known Errors:

  - Cluster

    - AllocatedStorage not supports for:
      - aurora-postgresql
      - aurora-mysql

    - DBClusterInstanceClass not support for:
      - aurora-postgresql
      - aurora-mysql


```
Last Transition Time:  2023-05-15T02:29:59Z
    Message:               apply failed: creating RDS Cluster (postgres-cluster): InvalidParameterCombination: AllocatedStorage isn't supported for DB engine aurora-postgresql.
                           status code: 400, request id: 1fd2609c-ee88-43c7-93c8-cf836a6ad676:
```

```
    Last Transition Time:  2023-05-12T06:39:31Z
    Message:               apply failed: creating RDS Cluster (postgres-cluster): InvalidParameterCombination: DBClusterInstanceClass isn't supported for DB engine aurora-postgresql.
```

### unknown Errors:

```
2023-05-12T04:52:53Z	DEBUG	events	cannot run plan: plan failed: Instance cannot be destroyed: Resource aws_db_parameter_group.regional-postgres-deleteme-v1-4gr79-tpwhc has lifecycle.prevent_destroy set, but the plan calls for this resource to be destroyed. To avoid this error and continue with the plan, either disable lifecycle.prevent_destroy or reduce the scope of the plan using the -target flag.	{"type": "Warning", "object": {"kind":"ParameterGroup","name":"regional-postgres-deleteme-v1-4gr79-tpwhc","uid":"9983e2fd-688e-41e6-8235-d79e19e34c0c","apiVersion":"rds.aws.upbound.io/v1beta1","resourceVersion":"224178782"}, "reason": "CannotObserveExternalResource"}
```

```
  - lastTransitionTime: "2023-05-15T03:20:07Z"
    message: 'observe failed: cannot schedule a native provider during observe: 184d47a1-32b7-4dfb-b4cc-b19df51191a4:
      cannot schedule native Terraform provider process: native provider reuse budget
      has been exceeded: invocationCount: 114, ttl: 100'
    reason: ReconcileError
    status: "False"
    type: Synced
```

```
- lastTransitionTime: "2023-05-16T05:20:26Z"
    message: 'observe failed: cannot run plan: plan failed: Instance cannot be destroyed:
      Resource aws_security_group.mysql-security-group has lifecycle.prevent_destroy
      set, but the plan calls for this resource to be destroyed. To avoid this error
      and continue with the plan, either disable lifecycle.prevent_destroy or reduce
      the scope of the plan using the -target flag.'
    reason: ReconcileError
    status: "False"
    type: Synced
```