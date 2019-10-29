node (){
	stage('git'){
		checkout scm
	}
	stage('docker build'){
		sh '''
		docker rm -f $(docker ps | grep 8888 | awk '{print $1}')
		docker build -t tdt:latest .
		docker run -p 8888:80 -dt tdt:latest
		'''
	}
}
