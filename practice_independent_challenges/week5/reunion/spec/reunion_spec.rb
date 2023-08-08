require './lib/reunion'
require './lib/activity'

RSpec.describe Reunion do 
  let(:reunion) {Reunion.new("1406 BE")}
  let(:activity_1) {Activity.new("Brunch")}
  let(:activity_2) {Activity.new("Drinks")}

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

  describe "#reunion_cost" do
    it "can return the total cost of the reunion summing the costs of the activities" do 
      activity_1.add_participant("Maria", 20)
      activity_1.add_participant("Luther", 40)
      activity_2.add_participant("Maria", 40)
      activity_2.add_participant("Luther", 0)

      reunion.add_activity(activity_1)
      reunion.add_activity(activity_2)

      expect(reunion.reunion_cost).to eq(100)
    end

    it "can return the total cost of the reunion summing the costs of the activities" do 
      activity_1.add_participant("Maria", 20)
      activity_1.add_participant("Luther", 40)
      activity_2.add_participant("Maria", 40)
      activity_2.add_participant("Luther", 0)

      reunion.add_activity(activity_1)
      reunion.add_activity(activity_2)

      expect(activity_1.owed).to eq({"Maria" => 10, "Luther" => -10})
      expect(activity_2.owed).to eq({"Maria" => -20, "Luther" => 20})

      expect(reunion.total_owed).to eq({"Maria" => -10, "Luther" => 10})
    end
  end
end