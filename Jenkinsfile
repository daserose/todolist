pipeline {
    agent any
    environment { // the env vars are visible for all stages
        DOCKERHUB = credentials('dockerHub')
    }
    tools {
        terraform 'terraform-0.14.7'
    }
    stages {
        // stage('build docker redis slave image') {
        //     steps {
        //         script {
        //             dockerSlaveImage = docker.build("${DOCKERHUB_USR}/redis_slave", "-f Dockerfile_redis_slave .")
        //         }
        //     }
        // }
        // stage('build docker project image') {
        //     steps {
        //         script {
        //             dockerImage = docker.build("${DOCKERHUB_USR}/todolist")
        //         }
        //     }
        // }
        // stage('push docker image') {
        //     steps {              
        //         script {
        //             docker.withServer('', DOCKERHUB) {
        //                 dockerSlaveImage.push()
        //                 dockerImage.push()
        //                 // to add specifig tag
        //                 // dockerImage.push(spec_tag)
        //               }
        //         }
        //     }
        // }
        // stage('clear') {
        //     steps {
        //         sh 'docker system prune --all -f'
        //     }
        // }
        // stage('docker-compose build') {
        //     steps {
        //         sh 'docker-compose build'
        //     }
        // }
        // stage('docker-compose up') {
        //     steps {    
        //         sh 'docker-compose build'          
        //     }
        // }
        // stage('docker-compose stop') {
        //     steps {
        //         sh 'docker-compose stop'
        //     }
        // }
        // stage('docker-compose down') {
        //     steps {
        //         sh 'docker-compose down'
        //     }
        // }
    //     stage('terraform init') {
    //         steps {
    //             withAWS(credentials: 'aws-credentials'){
    //                 sh 'terraform init'
    //             }
    //         }
    //     }
    //     stage('terraform plan') {
    //         steps {
    //             withAWS(credentials: 'aws-credentials'){
    //                 sh 'terraform plan -out=tfplan'
    //             }
    //         }
    //     }
    //     stage('terraform apply') {
    //         steps {
    //             withAWS(credentials: 'aws-credentials'){
    //                 sh 'terraform apply "tfplan"'
    //             }
    //         }
    //    }
    //    stage('clusters list') {
    //        steps {
    //            withAWS(credentials: 'aws-credentials'){
    //                sh 'aws --region us-east-2 eks list-clusters'
    //            }
    //        }
    //    }
    //    stage('update-kubeconfig') {
    //        steps {
    //            withAWS(credentials: 'aws-credentials'){
    //                sh 'aws --region us-east-2 eks update-kubeconfig --name todolist_cluster'
    //            }
    //        }
    //    }
        
    //    stage('get nodes') {
    //        steps {
    //            withAWS(credentials: 'aws-credentials'){
    //                sh 'kubectl get nodes'
    //            }
    //        }
    //    }
    //    stage('apply -f') {
    //        steps {
    //            withAWS(credentials: 'aws-credentials'){
    //                sh 'kubectl apply -f deployment/frontend-service.yaml'
    //            }
    //        }
    //    }        
         
    //    stage('deploy...') {
    //        steps {
    //            withAWS(credentials: 'aws-credentials'){
    //                sh 'kubectl apply -f deployment/frontend-service.yaml'
    //                sh 'kubectl apply -f deployment/redis-master-service.yaml'
    //                sh 'kubectl apply -f deployment/redis-slave-service.yaml'
    //                sh 'kubectl apply -f deployment/frontend-deployment.yaml'
    //                sh 'kubectl apply -f deployment/redis-master-deployment.yaml'
    //                sh 'kubectl apply -f deployment/redis-slave-deployment.yaml'
    //            }
    //        }
    //    }

    //    stage('kubectl get pods') {
    //        steps {
    //            withAWS(credentials: 'aws-credentials'){
    //                sh 'kubectl get pods'
    //            }
    //        }
    //    } 

       stage('kubectl get svc') {
           steps {
               withAWS(credentials: 'aws-credentials'){
                   sh 'kubectl delete svc frontend'
                   sh 'kubectl get deploy '
               }
           }
       }
        
    //     stage('terraform destroy') {
    //         steps {
    //             withAWS(credentials: 'aws-credentials'){
    //                 sh 'terraform destroy -auto-approve'
    //             }
    //         }
    //     }
        //  stage('terraform state rm') {
        //      steps {
        //          withAWS(credentials: 'aws-credentials'){
        //              sh 'terraform state rm module.eks.kubernetes_config_map.aws_auth'
        //          }
        //      }
        //  }
        //  stage('terraform destroy1') {
        //      steps {
        //          withAWS(credentials: 'aws-credentials'){
        //             sh 'terraform destroy -auto-approve'
        //         }
        //     }
        // }
    }
}

