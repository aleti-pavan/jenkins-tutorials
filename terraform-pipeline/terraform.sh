rm -fr .terraform *.tfstate

cat $terraformrc > ~/.terraformrc

terraform init

if [ $1 == "plan" ]
then
    terraform plan -var "client_id=$ARM_CLIENT_ID" -var "client_secret=$ARM_CLIENT_SECRET"
elif [ $1 == "apply" ]
then
    terraform apply -auto-approve -var "client_id=$ARM_CLIENT_ID" -var "client_secret=$ARM_CLIENT_SECRET"
elif [ $1 == "destroy" ]
then
    terraform destroy -auto-approve -var "client_id=$ARM_CLIENT_ID" -var "client_secret=$ARM_CLIENT_SECRET"
else
    echo "Usage: terraform.sh [ plan | apply ]" && exit 2
fi
