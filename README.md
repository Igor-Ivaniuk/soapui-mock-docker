# README #
Configured maven with repositories defined. Docker image for bitbucket ci.
To build run
```
docker build --rm -f Dockerfile -t intellecteu-docker-local.jfrog.io/mvn-artifactory:[new_tag] . 
docker push intellecteu-docker-local.jfrog.io/mvn-artifactory:[new_tag]
```

To build with Node, run
```
docker build --rm -f DockerfileMavenArtifactoryNode  -t intellecteu-docker.jfrog.io/mvn-artifactory-node:latest .
docker push intellecteu-docker.jfrog.io/mvn-artifactory-node:latest
```

To build with and AWS CLI, run
```
docker build --rm -f DockerfileMavenArtifactoryNodeAws  -t intellecteu-docker.jfrog.io/mvn-artifactory-node-aws:latest .
docker push intellecteu-docker.jfrog.io/mvn-artifactory-node-aws:latest
```

Usage in bitbucket-ci:
```
image:
  name: intellecteu-docker-local.jfrog.io/mvn-artifactory:3.5-jdk-8-alpine
  username: $ARTIFACTORY_USERNAME
  password: $ARTIFACTORY_PASSWORD
```
