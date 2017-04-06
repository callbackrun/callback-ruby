module Callback
  class Client
    attr_accessor :access_token

    def initialize(options={})
      @access_token = options.fetch(:access_token) do
        Callback.configuration.access_token
      end
    end
  end
end
