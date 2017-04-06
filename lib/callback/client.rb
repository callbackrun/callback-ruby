module Callback
  class Client
    attr_accessor :access_token

    def initialize(options={})
      @access_token = options.fetch(:access_token) do
        Callback.configuration.access_token
      end
    end

    def jobs
      @jobs ||= API::Jobs.new(access_token: access_token)
    end
  end
end
