#!/bin/bash

# Creating Atlassian applications and data directory structure
cd /opt/atlassian/
mkdir apps
mkdir data
cd /opt/atlassian/apps
mkdir jira
mkdir confluence
mkdir crowd
cd /opt/atlassian/data
mkdir jira
mkdir confluence
mkdir crowd

#creating 'atlassian' username all applications will run under
useradd atlassian

#changing directories ownership to 'atlassian' user
cd /opt
chown -R atlassian:atlassian atlassian

# Creating Java directory
mkdir /opt/java