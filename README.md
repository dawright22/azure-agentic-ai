# Azure OpenAI Terraform deployment for sample chatbot

This sample application deploys an AI-powered application with a database, a calculator, and websearch linked to Azure OpenAI Service, Azure Kubernetes Service (AKS), and a Python application leveraging the [Llama index](https://gpt-index.readthedocs.io/en/latest/) and [Streamlit](https://docs.streamlit.io/library/get-started). The application will be deployed within a virtual network to ensure security and isolation. Users will be able to see how vault is used to authenticate the agent for it interaction with OpenAI and the database, requiring dynamic credentials to gain access to the database.
![diagram](./images/agentic-ai.png)

## Application Architecture
![diagram](/images/diagram.png)

## Prerequisites

- Azure subscription. If you don't have an Azure subscription, [create a free account](https://azure.microsoft.com/free/?ref=microsoft.com&utm_source=microsoft.com&utm_medium=docs&utm_campaign=visualstudio) before you begin.
- Subscription access to Azure OpenAI service. Request Access to Azure OpenAI Service [here](https://customervoice.microsoft.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbR7en2Ais5pxKtso_Pz4b1_xUOFA5Qk1UWDRBMjg0WFhPMkIzTzhKQ1dWNyQlQCN0PWcu).
- [Terraform](https://learn.microsoft.com/azure/developer/terraform/quickstart-configure).

- Create a HCP vault dedicated instance and configure the endpoint and token in the `infra/variables.tf` file.

## Quickstart

### Run the Terraform

- Clone or fork this repository. 
   ```
   git clone https://github.com/dawright22/azure-agentic-ai.git
   cd azure-agentic-ai
   ```

- Go to the `infra` folder and run the following command to initialize your working directory.

    ```bash
    cd infra
    terraform init
    ```

- Run terraform apply to deploy all the necessary resources on Azure.

    ```bash
    terraform apply
    ```
- The external ip address of the service is shown in the Terrafrom output 

- Copy the external ip address and paste it in your browser. The application should load in a few seconds.

![app](/images/application-chatbot.png)

## Run the AI.
- In the chatbot, is a seeded dataset on population. The application will process inputs and allow you to ask questions based on their content.
- For example, you can ask questions like  "What is the population of China? in the database compared with current online data and calulate the difference".

## Clean up

- Terraform destroy to delete all resources created.

    ```bash
    terraform destroy
    ```
## Resources

- [Azure OpenAI](https://learn.microsoft.com/en-us/azure/cognitive-services/openai/overview)
- [Azure OpenAI Terraform verified module](https://registry.terraform.io/modules/Azure/openai/azurerm/latest).
