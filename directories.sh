#!/bin/bash

# Creating Atlassian applications and data directory structure
sudo -u root mkdir -p /opt/atlassian/apps/confluence
sudo -u root mkdir -p /opt/atlassian/apps/jira
sudo -u root mkdir -p /opt/atlassian/apps/crowd
sudo -u root mkdir -p /opt/atlassian/data/confluence
sudo -u root mkdir -p /opt/atlassian/data/jira
sudo -u root mkdir -p /opt/atlassian/data/crowd

#creating 'atlassian' username all applications will run under
useradd atlassian

#changing directories ownership to 'atlassian' user
cd /opt
chown -R atlassian:atlassian atlassian

# Creating Java directory
mkdir /opt/java