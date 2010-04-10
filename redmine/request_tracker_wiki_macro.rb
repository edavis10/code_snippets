# Put in vendor/plugins/redmine_rt_link/init.rb

require 'redmine'

Redmine::Plugin.register :redmine_rt_link do
  name 'Redmine Request Tracker link'
  author 'Eric Davis'
  url 'https://projects.littlestreamsoftware.com/projects/redmine-misc'
  author_url 'http://www.littlestreamsoftware.com'
  version '0.1.0'
  requires_redmine :version_or_higher => '0.8.0'


  Redmine::WikiFormatting::Macros.register do
    desc "Display a link to Request Tracker\n\n" +
         "  !{{rt(100)}}"
    macro :rt do |obj, args|
      issue_id = args[0]
      return link_to("Request Tracker ##{h(issue_id)}", "http://our-rt-installation/Display.html?id=#{issue_id}")
    end
  end
end

