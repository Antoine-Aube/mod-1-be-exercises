require './lib/renter'
require './lib/boat'
require './lib/dock'

RSpec.describe Dock do 
    let(:dock) { Dock.new("The Rowing Dock", 3) }
    let(:kayak_1) { Boat.new(:kayak, 20) }
    let(:kayak_2)  { Boat.new(:kayak, 20) }
    let(:sup_1)  { Boat.new(:standup_paddle_board, 15) }
    let(:patrick) { Renter.new("Patrick Star", "4242424242424242") }
    let(:eugene)  { Renter.new("Eugene Crabs", "1313131313131313") }

  describe "Exists and has attributes"do
    it { expect(dock).to be_a  Dock }
    it { expect(dock.name).to eq("The Rowing Dock") }
    it { expect(dock.max_rental_time).to eq(3) }
  end

  it "#Rent and rental log" do
    expected_hash = {
      kayak_1 => patrick,
      kayak_2 => patrick,
      sup_1 => eugene
    }
    expect(dock.rental_log).to eq({})

    dock.rent(kayak_1, patrick)    
    dock.rent(kayak_2, patrick)    
    dock.rent(sup_1, eugene) 

    expect(dock.rental_log).to eq(expected_hash)
  end

  it "#can charge boats" do
  dock.rent(kayak_1, patrick)
  
  expected_charges = {
    :card_number => "4242424242424242",
    :amount => 0
  }
  3.times {kayak_1.add_hour}
  # require 'pry';binding.pry
  expected_charges = {
    :card_number => "4242424242424242",
    :amount => 60
  }
  # dock.charge(kayak_1)
  # require 'pry';binding.pry
  expect(dock.charge(kayak_1)).to eq(expected_charges)
  
  kayak_1.add_hour
  
  expect(dock.charge(kayak_1)).to eq(expected_charges)
end

it "can a log an extra hour to each boat rented" do 
  dock.rent(kayak_1, patrick)
  dock.rent(kayak_2, patrick)

  3.times {kayak_1.add_hour}
  3.times {kayak_2.add_hour}

    dock.rental_log.each_key do |boat|
      expect(boat.hours_rented).to eq(3)
    end 

    dock.log_hour
  # require 'pry';binding.pry
    dock.rental_log.each_key do |boat|
      expect(boat.hours_rented).to eq(4)
    end 
  end
end