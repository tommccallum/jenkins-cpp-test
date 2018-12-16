pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
				sh 'cd build && conan install --build=missing ..'
				// FIX: need to remove this to stop cmake complaining about
				// it being created in a different directory
				sh 'cd build && rm -f CMakeCache.txt'
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
