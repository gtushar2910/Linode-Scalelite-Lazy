# Creating BigBlueButton Servers Cluster and Scalelite Load Balancer using Linode.

## Requirements

- Linode Account and Access Token
- Terraform 13.0+

## Pre-Install

Adjust configurations:

- [`vars/variables.tfvars`](vars/variables.tfvars)

### Provisioning

Initiate a new Terraform project in [`template`](template) directory:

```sh
terraform init
```

Plan and apply your changes, provisionning the resources:

```sh
terraform apply -var-file=../vars/variables.tfvars
```

## Using BigBlueButton servers through Scalelite

Your BigBlueButton servers are now ready to be used. You can use Scalelite with any external application (such as Moodle or Wordpress) by setting its hostname as the BigBlueButton URL and the secret generated (LOADBALANCER_SECRET) during the installation as the BigBlueButton Secret. 

For Example :

URL: https://scalelite.example.com/bigbluebutton/api/ 

Secret: 092ecafe840a125f504e814b83adcd0b298d3f04713d3cfe

## Remove

In case you need to destroy the resources, the process is similar for both [`bootstrap`](bootstrap) and [`template`](template):

```sh
terraform destroy --auto-approve -var-file=../vars/variables.tfvars
```
