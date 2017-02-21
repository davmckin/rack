require 'minitest/autorun'
require 'minitest/pride'
require 'rack/test'
require_relative 'app'

class RackTest < Minitest::test

  include Rack::Test::Methods

  def if app
    App
  end

  def test_lipsum
    get "/lipsums"
    p last_response
    assert last_response.ok?
    assert_equal "insert lipsum here", last_response.body
  end

  def test_a_404
    get "/gibberish here"
    refute last_response.ok?
    assert_equal 404, last_response.status
    assert_equal "dingus. 404.", last_response.body
  end

  def test_a_post
    post "/poster", 'field1' => "Hey", 'field2' => "i don't say ya'll"
    p last_resquest
    assert last_response.ok?
    assert_equal "Hey i don't say ya'll"
  end

end
