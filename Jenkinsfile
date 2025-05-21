pipeline {
        agent {
               label 'slave1'
               }
          stages {
                stage("SCM") {
                     steps {
                            git 'https://github.com/Karan-hi/nginx-pipeline-testing.git'
                            }
                             
                              }
                 stage("build-image") {
                     steps {
                             sh 'sudo docker build -t nginx:$BUILD_TAG .'
                             sh 'sudo docker tag nginx:$BUILD_TAG karanjangid12/pipeline-nginx:$BUILD_TAG'
                             }
                                       }




                 stage("dockerlogin") {
                     steps {
                             withCredentials([string(credentialsId: 'dockerhub_passwd', variable: 'dockerhub_passwd_var')]){
                             sh 'sudo docker login -u karanjangid12 -p ${dockerhub_passwd_var}'
                             sh 'sudo docker push karanjangid12/pipeline-nginx:$BUILD_TAG'
                             }
                     } 
                                      }


               stage("CONTAINER TESTING") {
                     steps {
                              sh 'sudo docker rm -f $(sudo docker ps -a -q)'
                              sh 'sudo docker run -dit --name tom  -p 8089:8080 karanjangid12/pipeline-nginx:$BUILD_TAG'
                    }
               }
              

                

                stage("testing-website") {
                     steps {
                               sh 'sudo sleep 20'                          
                               sh 'sudo curl  http://localhost:8089'
                            
                           }
                                   }



                 }
         } 


