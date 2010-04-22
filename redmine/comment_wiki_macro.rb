#
# vendor/plugins/redmine_comment_wiki_macro/init.rb
#
require 'redmine'

Redmine::Plugin.register :redmine_gist do
  name 'Redmine Wiki Comment plugin'
  author 'Eric Davis'
  description 'Allows commenting out a section of the Redmine wiki'
  version '0.0.1'

  Redmine::WikiFormatting::Macros.register do
    desc "Comment out a section"
    macro :comment do |obj, args|
      return '' # Return nothing, but the content is saved
    end

  end
end
