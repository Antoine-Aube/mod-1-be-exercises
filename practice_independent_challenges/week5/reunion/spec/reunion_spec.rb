require './lib/reunion'

RSpec.describe Reunion do 
  let(:reunion) {Reunion.new("1406 BE")}
  let(:activity) {Activity.new("Brunch")}

  describe "Initialize" do 
   it{expect(reunion).to be_a Reunion}
   it{expect(reunion.name).to eq("1406 BE")}
  end
end