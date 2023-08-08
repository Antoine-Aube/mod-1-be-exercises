require './lib/activity'

RSpec.describe Activity do 
  let (:activity) {Activity.new("Brunch")}

  describe "#initialize" do 
    it "exists and has a name" do 
      expect(activity).to be_a Activity
      expect(activity.name).to eq("Brunch")
      expect(activity.participants).to eq({})
    end
  end

  describe "#add_participants" do 
    it "can add participants to participants hash" do 
      activity.add_participant("Maria", 20)

      expect(activity.participants).to eq({"Maria" => 20})
    end
  end

  describe "total_cost" do 
    it "can calculate total cost" do 
      activity.add_participant("Maria", 20)
      activity.add_participant("Luther", 40)
      # require 'pry';binding.pry
      expect(activity.participants).to eq({"Maria" => 20, "Luther" => 40})
      expect(activity.total_cost).to eq(60)
    end 
  end

  describe "#split" do 
    it "can split the total cost by the amouf ot participants" do
      activity.add_participant("Maria", 20)
      activity.add_participant("Luther", 40)

      expect(activity.total_cost).to eq(60)
      expect(activity.split).to eq(30)
    end
  end

  describe "owed" do 
    it "can deduct split from amount participant paint" do 
      activity.add_participant("Maria", 20)
      activity.add_participant("Luther", 40)

      expect(activity.owed).to eq({"Maria" => 10, "Luther" => -10})
    end
  end
end