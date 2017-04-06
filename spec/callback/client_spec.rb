RSpec.describe Callback::Client do
  describe "#access_token" do
    after { Callback.configuration.access_token = nil }

    it "can be initialized with an access token" do
      expect(described_class.new(access_token: "BLAH").access_token).to eq "BLAH"
    end

    it "uses the access token from configuration if it's not specified" do
      Callback.configure do |config|
        config.access_token = "BLAH"
      end

      expect(subject.access_token).to eq "BLAH"
    end
  end

  describe "#base_path" do
    after { Callback.configuration.access_token = nil }

    it "can be initialized with an base path" do
      expect(described_class.new(base_path: "http://blah.com").base_path).to \
        eq "http://blah.com"
    end

    it "uses the base path from configuration if it's not specified" do
      Callback.configure do |config|
        config.base_path = "http://blah.com"
      end

      expect(subject.base_path).to eq "http://blah.com"
    end
  end

  describe "#jobs" do
    it "returns the jobs api" do
      expect(subject.jobs).to be_instance_of Callback::API::Jobs
    end
  end
end
