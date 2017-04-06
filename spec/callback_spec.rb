RSpec.describe Callback do
  describe ".configure" do
    it "yields the configuration" do
      expect { |b| described_class.configure(&b) }.to \
        yield_with_args Callback::Configuration
    end
  end
end
