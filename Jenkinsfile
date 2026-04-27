pipeline {
    agent any
	tools {
	maven 'mymave'
	jdk 'myjdk'
	}

    stages {
        stage('Checkout') {
            steps {
              checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/myself-8816/MuscleBlaxze-project.git']])
            }
        }

        stage('Build') {
    steps {
        sh 'mvn clean package -DBUILD_NUMBER=${BUILD_NUMBER}'
    }
}

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('sonatype') {
                    sh 'mvn sonar:sonar'
                }
            }
        }



        stage('JENKINS TO NEXUS') {
            steps {
              withMaven(globalMavenSettingsConfig: 'settings.xml', jdk: 'myjdk', maven: 'mymave', traceability: true) {
             sh 'mvn deploy'
             }
            }
        }
stage('Download WAR') {
  steps {
    withCredentials([usernamePassword(
        credentialsId: 'nexus-creds',
        usernameVariable: 'NEXUS_USER',
        passwordVariable: 'NEXUS_PASS'
    )]) {
       sh '''
        wget --user=$NEXUS_USER --password=$NEXUS_PASS \
http://54.198.236.12:8081/repository/maven-releases/com/gym/gym-outlet-advanced/1.0.${BUILD_NUMBER}/gym-outlet-advanced-1.0.${BUILD_NUMBER}.war
        '''
		
    }
  }
}

        stage('Build Docker Image') {
            steps {
                 sh """
docker build --no-cache --build-arg WAR_FILE=gym-outlet-advanced-1.0.${BUILD_NUMBER}.war -t pavansai33/klaus:latest .
"""
            }
        }
		stage('Login to Docker Hub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'docker-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push pavansai33/klaus:latest'
            }
        }
		        stage('K8s Deployment') {
    steps {
        withCredentials([file(credentialsId: 'kubeconfigfile', variable: 'KUBECONFIG')]) {
            sh """
            export KUBECONFIG=$KUBECONFIG
            kubectl get nodes
            kubectl apply -f fulldep.yml
            kubectl rollout restart deployment myapp-deployment
            """
        }
    }
}

       
    }
}
