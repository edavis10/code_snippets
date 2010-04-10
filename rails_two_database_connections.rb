# lib/second_database.rb
#
# Abstraction to connect to the second database
module SecondDatabase
  def self.included(base)
    base.class_eval do
      establish_connection :source_redmine
    end
  end
end

# app/models/source_user.rb
#
class SourceUser < ActiveRecord::Base
  include SecondDatabase
  set_table_name :users
end

# test_helper.rb
#
# Override the actual second database connection code in order to test
# against a known database
module SecondDatabase
  def self.included(base)
    base.class_eval do
      establish_connection("adapter" => 'sqlite3', "database" => File.expand_path(File.dirname(__FILE__) + '/test_database.sqlite3'))
    end
  end
end
