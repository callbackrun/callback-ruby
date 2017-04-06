require "httparty"

module Callback
  module API
    class Base
      attr_accessor :access_token, :base_path

      def initialize(access_token: nil, base_path: nil)
        @access_token = access_token
        @base_path = base_path
      end

      protected

      def request(method, path, parameters={})
        full_path = "#{base_path}#{path}"

        options = {
          headers: {
            "Accept"        => "application/json",
            "Authorization" => "Bearer #{access_token}",
            "Content-Type"  => "application/json; charset=utf-8"
          }
        }

        response = HTTParty.send method, full_path, options
        JSON.parse(response.body)
      end
    end
  end
end
