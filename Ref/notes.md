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


### Commands
- aws rds describe-db-engine-versions --engine aurora-postgresql --query '*[].[EngineVersion]' --output text > aurora-postgresql-engine.md

- aws rds describe-db-cluster-parameters --db-cluster-parameter-group-name default.aurora-postgresql14 > aurora-postgresql14.md

- aws rds describe-orderable-db-instance-options --engine aurora-mysql --engine-version "8.0.mysql_aurora.3.01.0" --query "OrderableDBInstanceOptions[].{DBInstanceClass:DBInstanceClass,SupportedEngineModes:SupportedEngineModes[0]}" --output table

- aws rds describe-orderable-db-instance-options --engine aurora-postgresql --engine-version "14.6" \
    --query "OrderableDBInstanceOptions[].{DBInstanceClass:DBInstanceClass,SupportedEngineModes:SupportedEngineModes[0]}" --output table

