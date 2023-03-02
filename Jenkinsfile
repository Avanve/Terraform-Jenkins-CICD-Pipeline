pipeline {

    
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
                bat 'terraform init'
                bat "terraform plan "
                bat 'terraform show '
            }
        }
        
        
       

        stage('Apply') {
            steps {
                bat " terraform apply --auto approve"
            }
        }
    }

  
}
