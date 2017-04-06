module CallbackStubbingFactory
  def callback_response_fixture(fixture)
    File.read(File.join("spec", "support", "fixtures", fixture)).strip.gsub(/\n\s*/, "")
  end

  def stub_callback_request(method, path, access_token, fixture, values={},
                            base_path="https://api.callback.run/")
    full_path = "#{base_path}#{path}"
    body = JSON.parse(callback_response_fixture(fixture)).merge(values).to_json
    stub_request(method, full_path)
      .to_return(status: 200, body: body)
  end
end
