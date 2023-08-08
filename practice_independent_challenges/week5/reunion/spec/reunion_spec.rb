require './lib/reunion'
require './lib/activity'

RSpec.describe Reunion do 
  let(:reunion) {Reunion.new("1406 BE")}
  let(:activity_1) {Activity.new("Brunch")}

  describe "Initialize" do 
   it{expect(reunion).to be_a Reunion}
   it{expect(reunion.name).to eq("1406 BE")}
  end

  describe "add_activity" do 
    it "can add activities to its array" do 
      expect(reunion.activities).to eq([])

      reunion.add_activity(activity_1)
      
      expect(reunion.activities).to eq([activity_1])
    end
  end
end