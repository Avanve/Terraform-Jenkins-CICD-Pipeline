
pipeline {

    parameters {
        string(name: 'environment', defaultValue: 'aws', description: 'Workspace/environment file to use for deployment')
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')

    }


     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
            
    stages {
        stage('checkout') {
            steps {
                 script{
                        dir("terraform")
                        {
                            git branch: 'main', url: "https://github.com/Avanve/Terraform-Jenkins-CICD-Pipeline.git"
                        }
                    }
                }
            }

        stage('Plan') {
            steps {
                bat 'terraform init -input=false'
                bat 'terraform workspace new %environment%'
                bat 'terraform workspace select %environment%'
                bat "terraform plan -input=false -out tfplan "
                bat 'terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

           steps {
               script {
                    def plan = readFile 'terraform/tfplan.txt'
                    input message: "Do you want to apply the plan?",
                    parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
               }
           }
       }

        stage('Apply') {
            steps {
                bat "terraform apply -input=false tfplan"
            }
        }
    }

  }














