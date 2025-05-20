pipeline {
    agent any

    environment {
        VENV = 'venv'
        DOCKER_IMAGE = 'anilkumar432/jenkins-assin'
        DOCKER_TAG = 'latest'
    }

    stages {
        stage("Install") {
            steps {
                sh '''
                    python3 -m venv $VENV
                    . $VENV/bin/activate
                    pip install --upgrade pip
                    pip install -r requirements.txt
                '''
            }
        }

        stage("Linting") {
            steps {
                script {
                    echo "This is my Linting Step"
                }
            }
        }

        stage("Install Packages") {
            steps {
                script {
                    echo "This is Install Packages Step"
                }
            }
        }

        stage("Run Application") {
            steps {
                script {
                    echo "This is my Run Application Step"
                }
            }
        }

        stage("Build Docker Image") {
            steps {
                script {
                    echo "Building Docker image..."
                    sh '''
                        docker build -t $DOCKER_IMAGE:$DOCKER_TAG .
                    '''
                }
            }
        }

        stage("Push Docker Image to Docker Hub") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'anilkumar432', passwordVariable: '3.MycAZMyCq4vHp')]) {
                    script {
                        echo "Logging in and pushing Docker image..."
                        sh '''
                            echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                            docker push $DOCKER_IMAGE:$DOCKER_TAG
                        '''
                    }
                }
            }
        }
    }
}
