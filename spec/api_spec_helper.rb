require "webmock/rspec"

require_relative "spec_helper"
require_relative "support/callback_stubbing_factory"

RSpec.configure do |config|
  config.include CallbackStubbingFactory
end
