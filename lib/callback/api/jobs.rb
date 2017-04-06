module Callback
  module API
    class Jobs < Base
      def create(parameters={})
        request :post, "/jobs", parameters
      end
    end
  end
end
