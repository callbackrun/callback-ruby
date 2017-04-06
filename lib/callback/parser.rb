require "hashie"

module Callback
  module Parser
    def parse(json)
      Hashie::Mash.new json
    end
  end
end
