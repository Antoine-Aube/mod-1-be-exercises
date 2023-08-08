require './lib/activity'

RSpec.describe Activity do 
  let (:activity) {Activity.new("Brunch")}

  describe "#initialize" do 
    it "exists and has a name" do 
      expect(activity).to be_a Activity
      expect(activity.name).to eq("Brunch")
    end
  end
end