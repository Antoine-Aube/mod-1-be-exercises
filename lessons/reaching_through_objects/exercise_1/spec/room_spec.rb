require 'spec_helper'

RSpec.describe Room do
  describe "#initialize" do 
    it "exists" do 
      room = Room.new("bathroom")

      expect(room.name).to eq("bathroom")
      expect(room).to be_a Room
    end
  end
end