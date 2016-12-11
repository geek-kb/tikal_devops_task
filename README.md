## Tikal DevOps home task
This repository contains the result of the DevOps home task which configures and deploys a django server.

## Status
[![Build Status](https://travis-ci.org/geek-kb/tikal_devops_task.svg?branch=master)](https://travis-ci.org/geek-kb/tikal_devops_task)

## Prerequisites
* Ansible 2.2.x
* Python 2.7
* GitHub account
* Travis-ci account

Upon commit to the git repository, Travis-CI will trigger a build.

In order to test the automatic build, simply browse to my travis-ci space (the link can be found under Links section) and review the last builds.

## How-to
1. Connect between your GitHub repository and Travis-CI.
2. Commit a change.
3. From a machine installed with Ansible 2.2.x and Python 2.7, clone the repository/deploy folder and run:

ansible-playbook deploy/main.yml

When the playbook finishes the run, there are a few ways to verify that django server is up and running:

* Run: curl -I (It's a capital i) localhost and expect a 200 OK http response.
* Run: netstat -an | grep ":80" .
* Run: sudo apt-get install -y lynx && lynx localhost and expect to see a "It works!" page.
 
## Links
* Travis-CI: https://travis-ci.org/geek-kb/tikal_devops_task
* My profile at Docker Hub: https://hub.docker.com/r/camelel/django/
* Demo of the ansible-playbook run: http://asciinema.org/a/11m41h2xt6lfiwawp3agqwdi4
