require "api_spec_helper"

RSpec.describe Callback::API::Jobs do
  let(:access_token) { "TOKEN" }
  let(:base_path) { "https://api.callback.run" }
  let(:callback_url) { "http://example.com/hooks/users/324/welcome" }
  let(:name) { "Send welcome email to new user" }
  subject { described_class.new access_token: access_token, base_path: base_path }

  describe "#create" do
    it "makes the request" do
      request = stub_request(:post, "https://api.callback.run/jobs")
        .with(body: hash_including(:callback_url, :name))
        .and_return(status: 201, body: {}.to_json)

      subject.create callback_url: callback_url, name: name

      expect(request).to have_been_requested
    end

    it "returns the newly created job" do
      stub_callback_request :post, "jobs", access_token, "job.json",
        "callback_url" => callback_url, "name" => name

      job = subject.create callback_url: callback_url, name: name

      expect(job.callback_url).to eq callback_url
      expect(job.name).to eq name
    end
  end

  describe "#find" do
    let(:safe_url) { CGI.escape(callback_url).gsub "\.", "%2E" }

    it "makes the request" do
      request = stub_request(:get, "https://api.callback.run/jobs/#{safe_url}")
        .and_return(status: 200, body: {}.to_json)

      subject.find callback_url

      expect(request).to have_been_requested
    end

    it "returns the found job" do
      stub_callback_request :get, "jobs/#{safe_url}", access_token,
        "job.json", "callback_url" => callback_url, "name" => name

      job = subject.find callback_url

      expect(job.callback_url).to eq callback_url
      expect(job.name).to eq name
    end
  end
end
