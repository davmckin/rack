require 'rack'
require 'puma'
require_relative 'app'

Rack::Handler::WEBrick.run App
