node (){
	stage('docker build'){
		sh """
		docker build -t tdt:latest .
		docker run -p 8888:80 -dt tdt:latest
		"""
	}
}
