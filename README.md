# terraform-aws-account-identity

[![Lint Status](https://github.com/DNXLabs/terraform-aws-account-identity/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-account-identity/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-account-identity)](https://github.com/DNXLabs/terraform-aws-account-identity/blob/master/LICENSE)

This terraform module creates identity roles on AWS

This modules creates the following resources:
 - Identity and Access Management (IAM) roles and policies
 - Identity roles created:
    - Admin Access
      - Policy attached: "arn:aws:iam::aws:policy/AdministratorAccess"
    - Data Scientist
      - Policy attached: "arn:aws:iam::aws:policy/job-function/DataScientist"
    - Database Admin
      - Policy attached: "arn:aws:iam::aws:policy/job-function/DatabaseAdministrator"
    - Network Admin
      - Policy attached: ""arn:aws:iam::aws:policy/job-function/NetworkAdministrator"
    - Power User Access
      - Policy attached: "arn:aws:iam::aws:policy/PowerUserAccess"
    - Security Audit
      - Policy attached: "arn:aws:iam::aws:policy/SecurityAudit"
    - Support User
      - Policy attached: "arn:aws:iam::aws:policy/job-function/SupportUser""
    - System Admin
      - Policy attached: "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
    - View Only Access
      - Policy attached: "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"

  In addition you have the option to:

   - Set or not a IAM account alias
   - Set Maximum CLI/API session duration
      - The default value is 43200

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.0 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account\_name | Account name (slug) | `any` | n/a | yes |
| create\_default\_roles | Create default roles in the account | `bool` | `true` | no |
| enable\_iam\_password\_policy | Enable IAM passoword policy | `bool` | `false` | no |
| extra\_roles | A list of extra roles to create in this account | `list` | `[]` | no |
| extra\_roles\_policy | A map of { <role\_name> = <json policy> } to create policies to extra roles in this account (role must be declared at extra\_roles first) | `map` | `{}` | no |
| extra\_roles\_policy\_arn | A map of { <role\_name> = <policy arn> } to attach policies to extra roles in this account (role must be declared at extra\_roles first) | `map` | `{}` | no |
| iam\_password\_policy\_max\_password\_age | n/a | `number` | `90` | no |
| iam\_password\_policy\_password\_reuse\_prevention | n/a | `number` | `12` | no |
| org\_name | Name for this organization (slug) | `any` | n/a | yes |
| role\_max\_session\_duration | Maximum CLI/API session duration | `string` | `"43200"` | no |
| saml\_provider\_arn | SAML Provider ARN to trust the roles created (pass either a name or ARN) | `string` | `""` | no |
| saml\_provider\_name | SAML Provider name to trust the roles created (pass either name or ARN) | `string` | `""` | no |
| set\_account\_alias | Whether to set or not IAM account alias | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_role\_admin\_arn | AdministratorAccess IAM role ARN |
| iam\_role\_billing\_arn | BillingAccess IAM role ARN |
| iam\_role\_data\_scientist\_arn | DataScientist IAM role ARN |
| iam\_role\_database\_admin\_arn | DatabaseAdministrator IAM role ARN |
| iam\_role\_extra\_arns | n/a |
| iam\_role\_network\_admin\_arn | NetworkAdministrator IAM role ARN |
| iam\_role\_power\_user\_arn | PowerUserAccess IAM role ARN |
| iam\_role\_security\_audit\_arn | SecurityAudit IAM role ARN |
| iam\_role\_support\_user\_arn | SupportUser IAM role ARN |
| iam\_role\_system\_admin\_arn | SystemAdministrator IAM role ARN |
| iam\_role\_view\_only\_arn | ViewOnlyAccess IAM role ARN |

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-account-identity/blob/master/LICENSE) for full details.