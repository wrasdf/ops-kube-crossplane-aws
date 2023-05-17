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
- patches of `ToCompositeFieldPath` sometimes not working as expected, even with correct XRD config.
- Update resources details with terraform `lifecycle.prevent_destroy` default settings.
  ```
      'observe failed: cannot run plan: plan failed: Instance cannot be destroyed:
        Resource aws_security_group.mysql-security-group has lifecycle.prevent_destroy
        set, but the plan calls for this resource to be destroyed.'
  ```
- After you apply the changes of existing resources, you don't know when the resources will be updated.
  - You have to wait, and sometimes you have to delete resources and re-apply  again.

### Command
- ./bin/compile.sh alpha-usea1-v1


- Create aurora db
- How to cover the backup restore with crossplane