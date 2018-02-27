
This needs a lot of work, but the basic working framework of it is there.

parking it here as a TODO

# Substantial TODO list
1) Needs a proper makefile
2) Needs a proper CI pipeline handling
3) probably needs some work and review on the dockerizing
4) needs to push to a repo

# Building
Right now this is kind of low-brow brute force. This script hopefully is building a statically bound executable, so it won't be dependent on various c dynamic libraries.
cheapo-build.sh 

# Dockerizing
This is minimum viable product

sudo docker build -t gohelloworldservice .

sudo docker run -p 80:8080 gohelloworldservice &

curl localhost/this/is/a/test
{"Code":"200","Message":"You hit the endpoint: /this/is/a/test"}



