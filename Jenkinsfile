

pipeline{

agent any

environment{
    dockerRegister ="damier85/damier-raymond"
    dockerRegisterCrudandtial ="Mydocker20"
    dockerImage ="aaaa"
    maven = tool name: 'maven-3', type: 'maven'
  
 
}

stages{

stage ('Clonning from git'){

    steps{
        git 'https://github.com/Damicode/kube.git'
    }
    

}

stage('Version'){
        steps{
       
             
            sh 'java -version'
            sh "${maven}/bin/mvn --version"
        }
}

stage('package & install 2'){
        steps{
          
            sh 'which java'
            sh "${maven}/bin/mvn package"
        }
}
    stage('scan analysis'){
        
            steps{

                script{
                    withSonarQubeEnv('mysonar'){

                sh "${maven}/bin/mvn sonar:sonar"
                        
                        sh '${maven}/bin/mvn clean install'
                }
            }

        }
        
        
        
        
    }


stage("E-MAIL notification"){
            
            steps{
                
             mail bcc: '', body: 'NOTIFICATION email NEW test', cc: 'contact@scooppapers.com', from: '', replyTo: '', subject: 'Test the E-mail', to: 'contact@scooppapers.com'
             
                sh "${PROJECT_NAME - Build} text : ${BUILD_NUMBER - $BUILD_STATUS}"
            }
            
        }
    
   
    
    stage("clean up or Remove Image"){
        
        steps
        {
        echo "cool s"
        }
        
    }

}

}
