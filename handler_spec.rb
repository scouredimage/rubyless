require_relative './handler.rb'
require 'test/unit'

class TestHandler < Test::Unit::TestCase
  def test_happy_path()
    response = fortune(event: {}, context: {})
    assert_equal 200, response[:statusCode]
  end
end
