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
  - https://github.com/crossplane/crossplane/issues/2712

- The patches of `ToCompositeFieldPath` sometimes not working as expected, even with correct XRD config.

- Update resources details with terraform `lifecycle.prevent_destroy` default settings.
  ```
      observe failed: cannot run plan: plan failed: Instance cannot be destroyed:
      Resource aws_security_group.mysql-security-group has lifecycle.prevent_destroy
      set, but the plan calls for this resource to be destroyed.'
  ```

- After you apply the changes of existing resources, you don't know when the resources will be updated.
  - You have to wait, and sometimes you have to delete resources and re-apply  again.

- Context:
  - Composition with multiple resources, eg: SecurityGroup Composition
  - Issue:
    - When we create a `claim` based on the Composition, and it shows `Composite resource claim is waiting for a composite resource to become Ready`
    - But we could not find the managed resource. eg: SecurityGroup
    - It's hard to debug this issue, even from logs of pod `crossplane-provider-aws`

### Command
- ./bin/compile.sh alpha-usea1-v1
