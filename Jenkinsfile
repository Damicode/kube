

pipeline{

agent any

environment{
    dockerRegister ="damier85/damier-raymond"
    dockerRegisterCrudandtial ="Mydocker20"
    dockerImage =""
    maven=tool name: 'maven', type: 'maven'
  
 
}

stages{

stage ('Clonning from git'){

    steps{
        git 'https://github.com/Damicode/kube.git'
    }
    

}

stage('Version'){
        steps{
            sh "${maven}/bin/mvn --version"
        }
}

stage('package & install'){
        steps{
          
            sh "${maven}/bin/mvn package"
        }
}



    
    stage("Pushing to Docker")
        
    {
        
            steps{

                    script
                    {

                        docker.withRegistry('', dockerRegisterCrudandtial)
                        {

                        }
                    }
            
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
