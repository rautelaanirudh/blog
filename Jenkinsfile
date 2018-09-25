pipeline {
    agent any
    stages {
        stage('qa') {
            steps {
                sh ''' #!/bin/bash -l
                    source ~/.bash_profile
                    rvm use "${RUBY_VERSION}"@"${GEMSET}"
                    bundle install
                    rails db:create
                    rails db:migrate
                    rspec spec/models/topic_spec.rb
                '''
            }
        }
    }
    post { 
        success { 
            echo 'Test Deployment Successful'
        }
    }
}
