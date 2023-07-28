require './lib/boat'
# require './lib/renter'

RSpec.describe Boat do 
  let(:kayak) { Boat.new(:kayak, 20) }
  #using let! will instantiate it before you use it, good to use in Rails 

  describe "initialize" do 
    it "exists and has attributes" do 
      # kayak = Boat.new(:kayak, 20) 
      
      expect(kayak).to be_a Boat
      
      expect(kayak.type).to eq(:kayak)
      expect(kayak.price_per_hour).to eq(20)
      expect(kayak.hours_rented).to eq(0)
    end
  end
  
  it "#add_hour" do 
    # kayak = Boat.new(:kayak, 20) 
    3.times {kayak.add_hour}
    expect(kayak.hours_rented).to eq(3)
  end
end