

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


stage("email notification"){
            
            steps{
                
                sh "${maven}/bin/mvn install 2>&1 | tee build.log && cat build.log | mail -s 'Maven build output' damierraymond@yahoo.fr && rm -f build.log"
                
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
