## AZURE TERRAFORM CONFIGURATION



	### Entity that can create resources
	A Service Principal is an application within Azure Active Directory whose authentication tokens can be used as the client_id, client_secret, and tenant_id fields needed by Terraform (subscription_id can be independently recovered from your Azure account details).
	

    Create Service Principal with Contributor rights
	Service Principal will have permissions to manage rcs in the specified Subscription 
	 
	### Login

     ```
     az login
     ```

	### Login with tenantID

    ```
	az login --tenant tenantID 
	```

    ### Get the list of Azure subscriptions

	```
    az account list --output table
	```

	### Select the subscription

    ```
	az account set --subscription <Azure-SubscriptionId>
	```

	### Create the service principal account

    ``
	az ad sp create-for-rbac --role="Contributor" 
	--scopes="/subscriptions/SUBSCRIPTION_ID"
    ```

	[Optional]
	### Add the -name parameter to add a descriptive name.

    ```
	az ad sp create-for-rbac --role="Contributor" 
--scopes="/subscriptions/SUBSCRIPTION_ID" --name="Azure-DevOps"
```