
PROJECT::

CREATE A VIRTUAL NETWORK IN AZURE CLOUD USING TERRAFORM::

Note: In the below BLOCK "resource group" is not mentioned in the MAIN.TF file as the resource group RG_DEMO" already exists in the azure portal. If not present than need to add the BLOCK for resource group creation.
Also need to add 'depends_on" below the subnet BLOCK. otherwise we will get error while running "terraform apply" command.

#Commands used:

terraform init \
terraform validate \
terraform plan -out main.tfplan \
terraform apply "main.tfplan" 

To DELETE al the resorces created via terraform:
terraform destroy




