require "spec_helper"

RSpec.describe Apartment do 
  describe "#initialize" do 
    it "exists" do 
      building = Building.new("623", "Savills Apartment Building")
      
      expect(building).to be_a Building
    end
    
    it "it has a building number and name" do 
      building = Building.new("623", "Savills Apartment Building")
      
      
      expect(building.building_number).to eq("623")
      expect(building.building_name).to eq("Savills Apartment Building")
    end
  end
  
  describe "#add_apartment" do 
    it "it adds an apartment to the building" do 
      bldg = Building.new("623", "Savills Apartment Building")
      expect(bldg.apartments).to be_empty

      apt_1 = Apartment.new
      apt_2 = Apartment.new
      apt_5 = Apartment.new

      bldg.add_apartment(apt_1)
      bldg.add_apartment(apt_2)
      bldg.add_apartment(apt_5)

      expect(bldg.apartments).to eq([apt_1, apt_2, apt_5])
    end
  end

  describe "#list_apartments" do 
    it "returns an array of apartments" do 
      bldg = Building.new("623", "Savills Apartment Building")
      expect(bldg.apartments).to be_empty

      apt_1 = Apartment.new
      apt_2 = Apartment.new
      apt_5 = Apartment.new

      bldg.add_apartment(apt_1)
      bldg.add_apartment(apt_2)
      bldg.add_apartment(apt_5)

      expect(bldg.list_apartments).to eq([apt_1, apt_2, apt_5])
    end
  end
end