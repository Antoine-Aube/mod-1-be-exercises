require "spec_helper"

RSpec.describe Apartment do 
  describe "#intialize" do 
    it "exists" do 
      apartment = Apartment.new
      
      expect(apartment).to be_a Apartment
    end
  end
  
  describe "#is_rented?" do
  it "returns whether or not the apt can be rented" do
    apartment = Apartment.new
    
    
    expect(apartment.is_rented?).to be false
  end
end

  describe "#rent" do 
    it "can set an apt as rented" do 
      apartment = Apartment.new
      expect(apartment.is_rented?).to be false
      
      apartment.rent

      expect(apartment.is_rented?).to be true 
    end
  end

  describe "#rooms" do 
    it "intializes as an empty array" do 
      apartment = Apartment.new
      
      expect(apartment.rooms).to be_empty
    end
  end
  
  describe "#add_room" do 
    it "can add rooms to the apt" do 
      apartment = Apartment.new
      room1 = Room.new("bathroom")
      room2 = Room.new("laundry")
      room3 = Room.new("kitchen")
      room4 = Room.new("bedroom")

      expect(apartment.rooms).to be_empty

      apartment.add_room(room1)
      apartment.add_room(room2)
      apartment.add_room(room3)
      apartment.add_room(room4)

      expect(apartment.rooms).to eq([room1, room2, room3, room4])
    end
  end

  describe "#list_rooms_by_name_alphabetically" do 
    it "returns allls rooms alphabetized" do 
      apartment = Apartment.new
      room1 = Room.new("bathroom")
      room2 = Room.new("laundry")
      room3 = Room.new("kitchen")
      room4 = Room.new("bedroom")

      apartment.add_room(room1)
      apartment.add_room(room2)
      apartment.add_room(room3)
      apartment.add_room(room4)

      expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
    end
  end
end