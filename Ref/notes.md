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



### Commands
- aws rds describe-db-engine-versions --engine aurora-postgresql --query '*[].[EngineVersion]' --output text > aurora-postgresql-engine.md

- aws rds describe-db-cluster-parameters --db-cluster-parameter-group-name default.aurora-postgresql14 > aurora-postgresql14.md


### Errors

```
2023-05-12T04:52:53Z	DEBUG	events	cannot run plan: plan failed: Instance cannot be destroyed: Resource aws_db_parameter_group.regional-postgres-deleteme-v1-4gr79-tpwhc has lifecycle.prevent_destroy set, but the plan calls for this resource to be destroyed. To avoid this error and continue with the plan, either disable lifecycle.prevent_destroy or reduce the scope of the plan using the -target flag.	{"type": "Warning", "object": {"kind":"ParameterGroup","name":"regional-postgres-deleteme-v1-4gr79-tpwhc","uid":"9983e2fd-688e-41e6-8235-d79e19e34c0c","apiVersion":"rds.aws.upbound.io/v1beta1","resourceVersion":"224178782"}, "reason": "CannotObserveExternalResource"}
```