module Callback
  class Configuration
    attr_accessor :access_token, :base_path

    def initialize
      @base_path = "https://api.callback.run"
    end
  end
end
