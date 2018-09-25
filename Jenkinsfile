pipeline {
    agent any
    stages {
        stage('qa') {
            environment {
                RUBY_VERSION = ${env.RUBY_VERSION}
            }
            steps {
                echo "${RUBY_VERSION}"
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
        success { 
            echo 'Test Deployment Successful'
        }
    }
}
