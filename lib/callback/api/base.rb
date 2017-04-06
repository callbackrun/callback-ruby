module Callback
  module API
    class Base
      attr_accessor :access_token

      def initialize(access_token: nil)
        @access_token = access_token
      end
    end
  end
end
