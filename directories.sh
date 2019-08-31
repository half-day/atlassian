#!/bin/bash

atlassiandir=/opt/atlassian
echo $atlassiandir

javadir=/opt/java
echo $javadir

#creating 'atlassian' username all applications will run under
if id "atlassian" >/dev/null 2>&1; then
        echo "user 'atlassian' exists"
else
        echo "user 'atlassian' does not exist, creating new username"
        useradd atlassian
fi

# Creating Atlassian applications and data directory structure
if [ -d "$atlassiandir" ]; then
    echo "seems like /opt/atlassian directory already exist. not sure I want to mess with it, skipping Atlassian directory structure creation."
else
	echo "creating directories....."
	sudo -u root mkdir -p $atlassiandir/apps/confluence
	sudo -u root mkdir -p $atlassiandir/apps/jira
	sudo -u root mkdir -p $atlassiandir/apps/crowd
	sudo -u root mkdir -p $atlassiandir/apps/bitbucket
	sudo -u root mkdir -p $atlassiandir/data/confluence
	sudo -u root mkdir -p $atlassiandir/data/jira
	sudo -u root mkdir -p $atlassiandir/data/crowd
	sudo -u root mkdir -p $atlassiandir/data/bitbucket
	
	#changing directories ownership to 'atlassian' user
	echo "updating directory tree ownership..."
	cd /opt
	chown -R atlassian:atlassian atlassian
	echo "atlassian applications directory structure has been created"
fi



# Creating Java directory
if [ -d "$javadir" ]; then
   echo "seems like Java directory already exist. not sure I want to mess with it, skipping this part..."
else
	echo "creating Java directory..."
	mkdir $javadir
	echo "Java directory has been created"
fi