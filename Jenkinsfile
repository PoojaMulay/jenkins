pipeline {
    agent any

    stages {
        stage('checkout - git') {
            steps {
                git branch: 'main', credentialsId: 'jenkins', url: 'https://github.com/PoojaMulay/jenkins/'
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }
        stage (" Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        } 
    }
}
    
