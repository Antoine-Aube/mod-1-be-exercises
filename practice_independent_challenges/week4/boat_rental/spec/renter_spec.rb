require './lib/renter'
require './lib/boat'

RSpec.describe Renter do 
  let(:renter) { Renter.new("Patrick Star", "4242424242424242") }
  it "exists and has attributes" do 
    # renter = Renter.new("Patrick Star", "4242424242424242")    

    expect(renter).to be_a Renter
    expect(renter.name).to eq("Patrick Star")
    expect(renter.credit_card_number).to eq("4242424242424242")
  end
end