pipeline {
    agent any

    environment {
        TF_VERSION = '1.5.0'  // Adjust to your Terraform version
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/mnsh-sharma/DevOPS.git',
                        credentialsId: 'GITAKSRepo'
                    ]]
                ])
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'tfplan', allowEmptyArchive: true
        }
        failure {
            sh 'terraform destroy -auto-approve'  // Optional: destroy on failure
        }
    }
}