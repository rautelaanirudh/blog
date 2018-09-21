pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                echo 'Test Cases'
            }
        }
    }
    post { 
        always { 
            echo 'Test Deployment'
        }
    }
}
