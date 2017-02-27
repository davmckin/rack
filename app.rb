require_relative 'kotor'
require_relative 'lotr'
require_relative 'hodor'

class App

  attr_accessor :env, :path

  def initialize(env)
    @env = env
    @params = define_params
  end

  def self.call(env)
    new(env).response
  end

  def define_params
    parts = env['PATH_INFO'].split("/").reject{|a| a ==""}
    @params = {
      controller: parts[0],
      id: parts[1],
      others: parts[2..-1]
    }
  end

  def response
    if @params[:controller] == 'lipsums'
      ['200', headers, ["Please pick between kotor, lotr, or hodor"]]
    elsif %w(kotor lotr hodor).include? @params[:controller].downcase
      ['200', headers, [Object.const_get(@params[:controller].capitalize).call(@params[:id])]]
    else
      four_oh_four
    end
  end

  def headers
    {'Content-Type' => 'text/html'}
  end

  def four_oh_four
    ['404', headers, ["ya blew it."]]
  end

end
