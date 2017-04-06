RSpec.describe Callback::Client do
  describe "#initialize" do
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

  describe "#jobs" do
    it "returns the jobs api" do
      expect(subject.jobs).to be_instance_of Callback::API::Jobs
    end
  end
end
