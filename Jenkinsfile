pipeline{
  agent any
  environment{
      DOCKER_IMAGE="largest-number"
  }
  stages{
      stage("Checkout"){
          steps{
              git branch : "main", url:"https://github.com/SUDARSHANJADHAV2/jenkins-lab-exercise-1.git"
            }
        }
        stage("Docker Build"){
            steps{
                script{
                    if(fileExists('Dockerfile')){
                      sh "docker build -t ${env.DOCKER_IMAGE} ."
                    }
                    else{
                     error "Dockerfile does not exists"
                    }
                } 
            }
        }
        stage('Docker Run'){
          steps{
            sh "docker run --rm ${env.DOCKER_IMAGE}"
          }
        }
    }
    post{
        success{
          echo "Successfully done"
        }
        failure{
          echo "Failure occured"
        }
    }
}
