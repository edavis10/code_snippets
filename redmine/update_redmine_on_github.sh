#!/bin/bash
# Script to automate the Redmine svn-to-git mirror
DIR=/home/edavis/dev/redmine/redmine-core

. ~/.keychain/$HOSTNAME-sh # My SSH key script for password-less logins

cd $DIR
git svn fetch --all
git push github
