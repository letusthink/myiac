## Get Docker images
nerdctl -n k8s.io pull ccr.ccs.tencentyun.com/devopsvip/jenkins:2.415-jdk11
nerdctl -n k8s.io pull ccr.ccs.tencentyun.com/devopsvip/inbound-agent:latest-jdk11
## LoadDockerImage
#kind load  docker-image ccr.ccs.tencentyun.com/devopsvip/jenkins:2.415-jdk11 --name devopscluster
#kind load  docker-image ccr.ccs.tencentyun.com/devopsvip/inbound-agent:latest-jdk11 --name devopscluster

## Jenkins
mkdir -p /nfs/data/jenkins
chmod -R 777 /nfs/data/jenkins

## Jenkins build cache
mkdir -p /nfs/data/jenkins-build-cache
chmod -R 777 /nfs/data/jenkins-build-cache

## Jenkins agent build workspace
mkdir -p  /nfs/data/jenkins-workspace
chmod -R 777 /nfs/data/jenkins-workspace

## ArgoAPP
kubectl -n argocd apply -f jenkins-argoapp.yaml 