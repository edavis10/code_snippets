#!/usr/bin/env ruby
#
# Script to fetch the latest commits from remote git repositories into
# the local bare git repo that is used by Redmine
#
require 'fileutils'

ROOT = '/srv/gitosis/checkouts/*'

Dir[ROOT].each do |path|
  FileUtils.cd(path, :verbose => true)
  system("git fetch")
end
