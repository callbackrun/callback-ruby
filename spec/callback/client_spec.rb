RSpec.describe Callback::Client do
  describe "#initialize" do
    after { Callback.configuration.access_token = nil }

    it "initializes with an options array" do
      expect { described_class.new }.to_not raise_error
    end

    it "can be initialized with an access token" do
      expect(described_class.new(access_token: "BLAH").access_token).to eq "BLAH"
    end

    it "uses the access token from configuration if it's not specified" do
      Callback.configure do |config|
        config.access_token = "BLAH"
      end

      expect(described_class.new.access_token).to eq "BLAH"
    end
  end
end
