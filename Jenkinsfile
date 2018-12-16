pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
				dir('build') {
					sh 'conan install --build=missing ..'
					// FIX: need to remove this to stop cmake complaining about
					// it being created in a different directory
					sh 'rm -f CMakeCache.txt'
	                sh 'cmake ..'
					sh 'cmake --build .'
				}
            }
        }
        stage('Test') { 
            steps {
                dir('build') {
					sh 'ctest -V'
				}
            }
        }
        stage('Deploy') { 
            steps {
                sh 'echo "Deploy"'
            }
        }
    }
	post {
		always {
			junit "tests/results*.xml"
		}
	}
}
