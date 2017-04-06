module Callback
  module API
    class Base
      attr_accessor :access_token, :base_path

      def initialize(access_token: nil, base_path: nil)
        @access_token = access_token
        @base_path = base_path
      end
    end
  end
end
