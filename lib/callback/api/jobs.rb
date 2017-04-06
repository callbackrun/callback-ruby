module Callback
  module API
    class Jobs < Base
      def create(parameters={})
        parse request(:post, "/jobs", parameters)
      end

      def find(id_or_callback_url)
        parse request(:get, "/jobs/#{id_or_callback_url}")
      end
    end
  end
end
