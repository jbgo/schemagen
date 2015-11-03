require 'test_helper'

class SchemagenTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Schemagen::VERSION
  end

  def test_generation_of_resources_from_rails_applicaiton
    app = Rails.application
    resources = Schemagen.resources Rails.application
    assert_equal ['author', 'blog', 'post'], resources.map(&:name).sort
  end
end
