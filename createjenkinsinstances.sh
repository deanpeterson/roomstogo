 #!/bin/bash
 for i in `seq 1 $1`; do
     oc new-app -f jenkins-ephemeral-template.json \
     -p JENKINS_SERVICE_NAME=jenkins,JENKINS_PASSWORD=jifpeanut,MEMORY_LIMIT=512Mi,NAMESPACE=openshift,JENKINS_IMAGE_STREAM_TAG=jenkins:latest,JENKINS_ROUTE=d0$i
 done
