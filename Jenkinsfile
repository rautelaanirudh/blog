pipeline {
    agent any
    stages {
        stage('qa') {
            steps {
                echo "${env.RUBY_VERSION}"
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
