require "./lib/contestant"
require "./lib/game"

RSpec.describe Game do 
  let(:pick_4) {Game.new('Pick 4', 2)}
  let(:mega_millions) {Game.new('Mega Millions', 5, true)}

  describe "exists and has attributes" do 
    it{expect(mega_millions).to be_a Game}
    it{expect(pick_4).to be_a Game}
    it{expect(mega_millions.name).to eq("Mega Millions")}
    it{expect(mega_millions.cost).to eq(5)}
    it{expect(mega_millions.national_drawing).to be true}
    it{expect(pick_4.national_drawing?).to be false}
  end
end