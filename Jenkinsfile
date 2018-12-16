pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
				sh 'cd build'
                sh 'cmake ..'
				sh 'cmake --build .'
            }
        }
        stage('Test') { 
            steps {
                sh 'echo "Test"'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'echo "Deploy"'
            }
        }
    }
}
