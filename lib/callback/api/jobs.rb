module Callback
  module API
    class Jobs < Base
      def create(parameters={})
        parse request(:post, "/jobs", parameters)
      end

      def find(id_or_callback_url)
        # TODO: This needs to be fixed on the server. It cannot parse periods

        safe_id = CGI.escape(id_or_callback_url).gsub "\.", "%2E"
        parse request(:get, "/jobs/#{safe_id}")
      end
    end
  end
end
