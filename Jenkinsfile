pipeline {
        agent {
               label 'slave1'
               }
          stages {
                stage("SCM") {
                     steps {
                            git 'https://github.com/Karan-hi/nginx-pipeline-testing.git'
                            }
                 stage("build-image") {
                     steps {
                             sh 'sudo docker build -t nginx:$BUILD_TAG .'
                             sh 'sudo docker tag nginx:$BUILD_TAG karanjangid12/pipeline-nginx:$BUILD_TAG'
                             }
                }
              }
}
} 
}

