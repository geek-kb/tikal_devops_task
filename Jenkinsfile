node (){
	stage('git'){
		checkout scm
	}
	stage('docker build'){
		sh """
		docker build -t tdt:latest --no-cache .
		docker run -p 8888:80 -dt tdt:latest
		"""
	}
}
