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

- SecurityGroupRule 
  - securityGroupId
  - securityGroupIdRef
  - securityGroupIdSelector

### Composition Details

- patches
  - type: `FromCompositeFieldPath` -> `FromCompositeFieldPath` is the default when 'type' is omitted.
  - policy: `Required` 
    - By default a patch from a field path that does not exist is simply skipped until it does. 
    - Use the 'Required' policy to instead block and return an error when the field path does not exist.

- Passing Parameters between resources -> need to be tested
  - https://github.com/upbound/provider-terraform/blob/main/examples/transition/02-composition-tf-and-native/composition.yaml
  - https://pet2cattle.com/2022/03/crossplane-status-across-objects


### Other Ref:
- https://docs.gomplate.ca/

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

```
    Last Transition Time:  2023-05-17T03:42:41Z
    Message:               apply failed: creating RDS Cluster (mysql-cluster-ap-southeast-2): InvalidParameterValue: Value for storageEncrypted should match setting for global cluster global-mysql-cluster-us-east-1
                           status code: 400, request id: c6bd3647-7b85-4341-80b6-a7a12a8f6ce9:
    Reason:                ApplyFailure
    Status:                False
```

```
    Last Transition Time:  2023-05-17T04:52:33Z
    Message:               apply failed: creating RDS Cluster (mysql-cluster-ap-southeast-2): InvalidParameterCombination: Cannot specify database name for cross region replication cluster
                           status code: 400, request id: ad62fdbf-4446-4cb6-8e62-8311136e0b08:
```
```
    Last Transition Time:  2023-05-17T05:35:50Z
    Message:               apply failed: creating RDS Cluster (mysql-cluster-ap-southeast-2): InvalidParameterCombination: Cannot specify user name for cross region replication cluster
                           status code: 400, request id: 5da7df6f-8bb4-41bb-a932-de8d81250356:
    Reason:                ApplyFailure
    Status:                False
    Type:                  LastAsyncOperation
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
    Last Transition Time:  2023-05-17T05:17:38Z
    Reason:                Available
    Status:                True
    Type:                  Ready
    Last Transition Time:  2023-05-17T05:22:41Z
    Message:               observe failed: cannot schedule a native provider during observe: 9330c5d1-6d02-416d-81f8-12b260c0e087: cannot schedule native Terraform provider process: native provider reuse budget has been exceeded: invocationCount: 113, ttl: 100
    Reason:                ReconcileError
    Status:                False
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

```
Events:
  Type     Reason              Age                  From                                                             Message
  ----     ------              ----                 ----                                                             -------
  Warning  OfferClaim          10m                  offered/compositeresourcedefinition.apiextensions.crossplane.io  cannot add composite resource claim finalizer: cannot update object: Operation cannot be fulfilled on compositeresourcedefinitions.apiextensions.crossplane.io "xsg.aws.v1beta1.afterpay.cloud": the object has been modified; please apply your changes to the latest version and try again
  Normal   OfferClaim          10m                  offered/compositeresourcedefinition.apiextensions.crossplane.io  waiting for composite resource claim CustomResourceDefinition to be established
  Warning  OfferClaim          10m                  offered/compositeresourcedefinition.apiextensions.crossplane.io  cannot apply rendered composite resource claim CustomResourceDefinition: cannot create object: customresourcedefinitions.apiextensions.k8s.io "sgs.aws.v1beta1.afterpay.cloud" already exists
  Normal   RenderCRD           10m (x5 over 10m)    offered/compositeresourcedefinition.apiextensions.crossplane.io  Rendered composite resource claim CustomResourceDefinition
  Normal   ApplyClusterRoles   10m (x4 over 10m)    rbac/compositeresourcedefinition.apiextensions.crossplane.io     Applied RBAC ClusterRoles
  Normal   OfferClaim          10m (x3 over 10m)    offered/compositeresourcedefinition.apiextensions.crossplane.io  Applied composite resource claim CustomResourceDefinition
  Normal   OfferClaim          10m (x2 over 10m)    offered/compositeresourcedefinition.apiextensions.crossplane.io  (Re)started composite resource claim controller
  Warning  EstablishComposite  9m8s (x12 over 10m)  defined/compositeresourcedefinition.apiextensions.crossplane.io  cannot apply rendered composite resource CustomResourceDefinition: existing object is not controlled by UID "873f64bb-afb2-4935-a604-510571cc0874"
  Normal   RenderCRD           47s (x38 over 10m)   defined/compositeresourcedefinition.apiextensions.crossplane.io  Rendered composite resource CustomResourceDefinition
```