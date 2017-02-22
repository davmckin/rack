require_relative 'kotor'
require_relative 'lotr'
require_relative 'hodor'

attr_accessor :env, :path

class App

def initialize(env)
  @env = env
  @path = env["PATH_INFO"]


def response
  if @path == "/lipsums"
    "Would you like to read kotor lotr or hodor?"
  elsif @path == "kotor"
    kotor_output
  elsif @path == "lotr"
    lotr_output
  elsif @path == "hodor"
    hodor_output
  else
    four_oh_four
  end
end


end


def four_oh_four
  puts "ya blew it."
end


end
