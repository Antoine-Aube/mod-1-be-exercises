require "spec_helper"

RSpec.describe Street do 
  describe "#initialize" do 
    it "exists" do 
      adlington = Street.new("Adlington Road")
      
      expect(adlington).to be_a Street
      expect(adlington.name).to eq("Adlington Road")
    end
  end
  
  describe "#add_building" do 
    it "can add a building to the street" do 
      adlington = Street.new("Adlington Road")
      building_1 = Building.new("623", "Savills Apartment Building")


      expect(adlington.buildings_list).to be_empty

      adlington.add_building(building_1)

      expect(adlington.buildings_list).to eq([building_1])
    end
  end

  describe "#buildings" do 
    it ""
  end
end