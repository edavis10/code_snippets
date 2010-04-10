# test_helper.rb
class Test::Unit::TestCase

  def self.should_add_each_record_from_the_source_to_the_destination(model, count, &block)
    should "add each record from the source database to the destination database" do
      assert_difference("#{model}.count", count) do
        instance_eval &block
      end
    end
  end
  
end

# tests.rb
class SourceNewsTest < Test::Unit::TestCase
  should_add_each_record_from_the_source_to_the_destination(News, 1) { SourceNews.migrate }
end

class SourceVersionTest < Test::Unit::TestCase
  should_add_each_record_from_the_source_to_the_destination(Version, 2) { SourceVersion.migrate }
end
