# require 'minitest/autorun'
# require 'minitest/pride'
# require 'rack/test'
# require_relative 'app'
#
# class RackTest < Minitest::test
#
#   include Rack::Test::Methods
#
#   def if app
#     App
#   end
#
#   def test_lipsum
#     get "/lipsums"
#     p last_response
#     assert last_response.ok?
#     assert_equal "insert lipsum here", last_response.body
#   end
#
#   def test_a_404
#     get "/gibberish here"
#     refute last_response.ok?
#     assert_equal 404, last_response.status
#     assert_equal "ya blew it.", last_response.body
#   end
#

#
# end
