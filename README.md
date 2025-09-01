# Terraform configuration for an Amazon EKS cluster

Helper repository for the project:: https://github.com/dariusz-trawicki/coding-examples/tree/main/gitops-project

### Step 1. Create resources

#### Create backend bucket

```bash
cd s3-backend
terraform init
terraform validate
terraform plan
terraform apply
```

#### Create ECR

```bash
cd ../ecr
terraform init
terraform validate
terraform plan
terraform apply
# ***output (example) ***
# ecr_repo_url = "25xxxxxxxxx07.dkr.ecr.eu-central-1.amazonaws.com/vprofileapp"
```

### Step 2. Run the Github action - create EKS cluster

Run the `Vprofile IAC` action.

**NOTE**: This action requires GitHub secrets to be set up first:
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- BUCKET_TF_STATE
