module Callback
  class Client
    attr_accessor :access_token, :base_path

    def initialize(options={})
      @access_token = initialize_attribute :access_token, options
      @base_path = initialize_attribute :base_path, options
    end

    def jobs
      @jobs ||= API::Jobs.new(access_token: access_token, base_path: base_path)
    end

    private

    def initialize_attribute(key, options)
      options.fetch(key) { Callback.configuration.send(key) }
    end
  end
end
