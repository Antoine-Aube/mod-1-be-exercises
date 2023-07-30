require "./lib/contestant"
require "./lib/game"

RSpec.describe Contestant do 
  let(:alexander) {Contestant.new({
                      first_name: 'Alexander', 
                      last_name: 'Aigiades',
                      age: 28,
                      state_of_residence: 'CO',
                      spending_money: 10})
                    }
  describe "it exists and has attributes" do 
    it{ expect(alexander).to be_a Contestant }
    it{ expect(alexander.full_name).to eq("Alexander Aigiades") }
    it{ expect(alexander.age).to eq(28) }
    it{ expect(alexander.spending_money).to eq(10) }
    it{ expect(alexander.out_of_state?).to eq(false) }
  end

  desribe "#game_interests" do 
    it "has game interested represented by an empty array" do
      expect(alexander.game_interests).to eq([])
    end

    it "can add game interests that populate in teh the game interests array" do 
      alexander.add_game_interest('Mega Millions')
      alexander.add_game_interest('Pick 4')

      expect(alexander.game_interests).to eq(["Mega Millions", "Pick 4"])
    end
  end
                    
end