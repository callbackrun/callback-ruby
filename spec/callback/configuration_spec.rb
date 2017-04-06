RSpec.describe Callback::Configuration do
  context "defaults" do
    describe "#base_path" do
      it "defaults to the production api path" do
        expect(subject.base_path).to eq "https://api.callback.run"
      end
    end
  end
end
