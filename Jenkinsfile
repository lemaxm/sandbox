@NonCPS
def printParams(def params) {
    for (String value : params) {
	    println value
	}
}

node {
    sh 'env > env.txt'
    printParams(readFile('env.txt').split("\r?\n"))
    stage('Preparation') { // for display purposes
        if (dryRun == "false") {
            println "Checking out..."
        } else {
            // Get some code from a GitHub repository
            println "git credentialsId: '8920f443-7cab-4767-8b86-919fb0543995', url: 'git@github.com:Datameer-Inc/dap.git'"
        }
    }
    stage('Build') {
        if (dryRun == "false") {
            println "Building..."
        } else {
            // Run the maven build
            println 'sh "./gradlew versions"'
        }
    }
}
