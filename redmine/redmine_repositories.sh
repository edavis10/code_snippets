#!/bin/bash
# Fetch the SCM changesets for all active Redmine projects.  By default Redmine
# tries to get them from archived projects also.
TZ='America/Los_Angeles'; export TZ
/home/websites/projects.littlestreamsoftware.com/current/script/runner -e production "Project.find_all_by_status(Project::STATUS_ACTIVE).collect(&:repository).compact.each {|repo| repo.fetch_changesets }"
