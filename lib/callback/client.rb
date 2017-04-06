module Callback
  class Client
    attr_accessor :access_token, :base_path

    def initialize(options={})
      @access_token = options.fetch(:access_token) do
        Callback.configuration.access_token
      end
      @base_path = options.fetch(:base_path) do
        Callback.configuration.base_path
      end
    end

    def jobs
      @jobs ||= API::Jobs.new(access_token: access_token, base_path: base_path)
    end
  end
end
