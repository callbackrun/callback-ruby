require "api_spec_helper"

RSpec.describe Callback::API::Jobs do
  include CallbackStubbingFactory

  let(:access_token) { "TOKEN" }
  let(:base_path) { "https://api.callback.run" }
  let(:callback_url) { "http://example.com/hooks/users/324/welcome" }
  let(:name) { "Send welcome email to new user" }
  subject { described_class.new access_token: access_token, base_path: base_path }

  describe "#create" do
    it "creates a new job and returns the specified job" do
      stub_callback_request :post, "jobs", access_token, "jobs/create_success.json",
        "callback_url" => callback_url, "name" => name

      job = subject.create callback_url: callback_url, name: name

      expect(job["callback_url"]).to eq callback_url
      expect(job["name"]).to eq name
    end
  end
end
