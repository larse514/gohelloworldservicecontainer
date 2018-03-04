
# WARNING - not yet fit for general consumption
This needs a lot of work, but the basic working framework of it is there.

parking it here as a TODO
<br/>
**NOTE:** CI is currently not working due to issue starting Docker in circleci container

### Substantial TODO list
1) Needs a proper CI pipeline handling
2) probably needs some work and review on the dockerizing
3) needs to push to a repo

### Multi-Stage build
This application uses a multi-stage build to both compartmentalize the build soley into the Dockerfile as well as to reduce the image size.  When packed this reduces the image to ~5mb.  

### Makefile
A simple Makefile is included to perform the following: <br/> 
1) Run GO unit tests
2) Build Dockerfile with specified tag
3) Run Docker container locally
4) Push Docker image to DockerHub repository





