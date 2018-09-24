pipeline {
    agent any
    stages {
        stage('qa') {
            steps {
                sh 'rspec spec/models/topic_spec.rb'
            }
        }
    }
    post { 
        always { 
            echo 'Test Deployment'
        }
    }
}
