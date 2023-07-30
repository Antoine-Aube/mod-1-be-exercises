 require "./lib/contestant"
 require "./lib/game"
 require "./lib/colorado_lottery"

 RSpec.describe ColoradoLottery do 
  let(:lottery) {ColoradoLottery.new}
  let(:pick_4) {Game.new('Pick 4', 2)}
  let(:mega_millions) {Game.new('Mega Millions', 5, true)}
  let(:cash_5) {Game.new('Cash 5', 1)}
  let(:alexander) {Contestant.new({
                    first_name: 'Alexander', 
                    last_name: 'Aigiades',
                    age: 28,
                    state_of_residence: 'CO',
                    spending_money: 10
                  })
                  }
  let(:benjamin) {Contestant.new({
                    first_name: 'Benjamin',
                    last_name: 'Franklin',
                    age: 17,
                    state_of_residence: 'PA',
                    spending_money: 100})
                  }
  let(:frederick) {Contestant.new({
                    first_name:  'Frederick',
                    last_name: 'Douglass',
                    age: 55,
                    state_of_residence: 'NY',
                    spending_money: 20})
                  }

  let(:winston)  {Contestant.new({
                  first_name: 'Winston',
                  last_name: 'Churchill',
                  age: 18,
                  state_of_residence: 'CO',
                  spending_money: 5})
                }
  let(:antoine) {Contestant.new({
                  first_name: 'Antoine',
                  last_name: 'Aube',
                  age: 32,
                  state_of_residence: 'CO',
                  spending_money: 1})
                }

  describe "intialize and has attributes" do 
    it{expect(lottery).to be_a ColoradoLottery}
    it{expect(lottery.registered_contestants).to eq({})}
    it{expect(lottery.winners).to eq([])}
    it{expect(lottery.current_contestants).to eq({})}
  end

  describe "#interested_and_18?" do 
    it "return a boolean based on contestand ages and game interests" do 
      alexander.add_game_interest('Pick 4')
      alexander.add_game_interest('Mega Millions')
      frederick.add_game_interest('Mega Millions')
      winston.add_game_interest('Cash 5')
      winston.add_game_interest('Mega Millions')
      benjamin.add_game_interest('Mega Millions')
      
      expect(lottery.interested_and_18?(alexander, pick_4)).to eq(true)
      # require 'pry';binding.pry
      expect(lottery.interested_and_18?(benjamin, mega_millions)).to eq(false)
      expect(lottery.interested_and_18?(alexander, cash_5)).to eq(false)
    end  
  end
  
  describe "can_register?" do 
    it "can registed contestants based on contestant attributes" do 
      alexander.add_game_interest('Pick 4')
      alexander.add_game_interest('Mega Millions')
      frederick.add_game_interest('Mega Millions')
      winston.add_game_interest('Cash 5')
      winston.add_game_interest('Mega Millions')
      benjamin.add_game_interest('Mega Millions')
      # require 'pry';binding.pry

      expect(lottery.can_register?(alexander, pick_4)).to eq(true)
      expect(lottery.can_register?(alexander, cash_5)).to eq(false)
      expect(lottery.can_register?(frederick, mega_millions)).to eq(true)
      expect(lottery.can_register?(benjamin, mega_millions)).to eq(false)
      # require 'pry';binding.pry
      expect(lottery.can_register?(frederick, cash_5)).to eq(false)
    end
  end
  
  describe "register contestant" do 
    it "can only register a contestant if #can_register == true" do 
      alexander.add_game_interest('Pick 4')
      alexander.add_game_interest('Mega Millions')
      frederick.add_game_interest('Mega Millions')
      winston.add_game_interest('Cash 5')
      winston.add_game_interest('Mega Millions')
      benjamin.add_game_interest('Mega Millions')
      
      
      expect(lottery.register_contestant(alexander, pick_4)).to eq(alexander)
      expect(lottery.register_contestant(alexander, cash_5)).to eq(nil)
      expect(lottery.register_contestant(frederick, mega_millions)).to eq(frederick)
      expect(lottery.register_contestant(benjamin, mega_millions)).to eq(nil)
      # require 'pry';binding.pry
      expect(lottery.register_contestant(frederick, cash_5)).to eq(nil)
      expect(lottery.registered_contestants).to eq({pick_4 => [alexander], mega_millions => [frederick]})
    end
  end 
  describe "eligible contestant" do 
    it "returns an array of contestants who have enough money to play the game" do 
      alexander.add_game_interest('Pick 4')
      alexander.add_game_interest('Mega Millions')
      frederick.add_game_interest('Mega Millions')
      winston.add_game_interest('Cash 5')
      winston.add_game_interest('Mega Millions')
      benjamin.add_game_interest('Mega Millions')
      antoine.add_game_interest('Pick 4')

      lottery.register_contestant(frederick, mega_millions)
      lottery.register_contestant(alexander, pick_4)
      lottery.register_contestant(antoine, pick_4)
      require 'pry';binding.pry
      expect(lottery.eligible_contestants(pick_4)).to eq([alexander])
      expect(lottery.eligible_contestants(mega_millions)).to eq([frederick])
    end
  end
end