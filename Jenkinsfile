pipeline {
    agent any
    tools {
       terraform 'terraform'
    }
    stages {
        git branch: 'main', credentialsId: 'github-id', url: 'https://github.com/gazypendragon/Terraform-aws-s3bucket.git'
           steps{
             checkout scm
            }
        }
        stage('terraform format check') {
            steps{
                sh 'terraform fmt'
            }
        }
        stage('terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }

    
}
