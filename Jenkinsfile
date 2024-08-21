pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    // إضافة تنفيذ سكربت الـ PowerShell على ويندوز
                    powershell 'Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // تشغيل سكربت PowerShell بدلاً من `sh`
                    powershell './check_and_deploy.ps1'
                }
            }
        }
    }
}
