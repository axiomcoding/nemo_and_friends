require_relative './spec_helper'
require_relative '../nemo.rb'

describe "ClownFish" do
  let(:nemo) {ClownFish.new}  

  describe '::new' do
    it 'is instantiated with a name set to Nemo that can be called but not changed' do
      expect(nemo.name).to eq("Nemo")
      expect { nemo.name = "Little Nemo" }.to raise_error(StandardError)
    end

    it 'is instantiated with a location set to Unknown that can be called and changed' do
      expect(nemo.location).to eq("Unknown")
      expect(nemo.location = "Dentist").to eq("Dentist")
    end
  end

  describe '#speak' do
    it "is able to speak" do
      expect($stdout).to receive(:puts).with("Dad?!")
      nemo.speak
    end
  end

end