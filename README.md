# using this repo we can deploy following infrastracture . This is not for production use
 - VPC
 - subnets
 - nat
 - Multiple compute instances
 - Cloud SQL(MySQL) on private subnet
 - Firewall
 - TCP external load balancer

 ## Please use the following steps to deploy GCP resources using these codes
 1. Make sure following API is enabled
    - Cloud SQL
    - Cloud SQL Admin API
    - Compute Engine API
    - Google Cloud APIs
2. change directory to gcp-terraform-code/dev
3. terraform apply to create VPC,subnet and net
4. change to gcp-terraform-code/dev/cloudsql
5. terraform apply to create mysql
6. change to gcp-terraform-code/dev/compute-instance
7. terraform apply to create vm instance (modify startup script to change mysql ip and password)
8. change to gcp-terraform-code/dev/firewall and apply terrform 
9. change to gcp-terraform-code/dev/tcp-lb to create load balancer

## Note: some information are hardcoded and you need to change inorder to make this code working like (project id,vpc,vm name etc)