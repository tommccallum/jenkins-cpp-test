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
                // 
            }
        }
        stage('Deploy') { 
            steps {
                // 
            }
        }
    }
}
