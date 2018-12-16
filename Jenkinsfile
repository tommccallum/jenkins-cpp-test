pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
				sh 'cd build && conan install --build=missing ..'
                sh 'cd build && cmake ..'
				sh 'cd build && cmake --build .'
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
