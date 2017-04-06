module Callback
  module API
    class Jobs < Base
      def create(parameters={})
        parse request(:post, "/jobs", parameters)
      end
    end
  end
end
