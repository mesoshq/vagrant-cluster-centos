#!/usr/bin/env bash

# Add EPEL
rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm

# Update the repos
yum update

# Install Ansible dependencies
yum install -y python-pip

# Install virtualenv
pip install virtualenv