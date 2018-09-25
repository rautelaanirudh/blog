pipeline {
    agent any
    stages {
        stage('qa') {
            steps {
                sh ''' #!/bin/bash -l
                    source ~/.bash_profile
                    rvm use 2.5.1@blog
                    bundle install
                    rails db:create
                    rails db:migrate
                    rspec spec/models/topic_spec.rb
                '''
            }
        }
    }
    post { 
        always { 
            echo 'Test Deployment'
        }
    }
}
