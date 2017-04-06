require "callback/api"
require "callback/client"
require "callback/configuration"
require "callback/version"

module Callback
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration if block_given?
  end
end
