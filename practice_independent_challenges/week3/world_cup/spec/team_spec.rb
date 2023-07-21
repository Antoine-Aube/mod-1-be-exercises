require './lib/team'
require './lib/player'

RSpec.describe Player do 
  describe "#intialize" do 
    it "can exist" do 
      team = Team.new("France")
      
      expect(team).to be_a Team 
    end
    
    it "has a country" do 
      team = Team.new("France")
      
      expect(team.country).to eq("France")
    end
  end
  
  describe "#eliminated?" do 
    it "can be eliminated" do 
      team = Team.new("France")
      
      expect(team.eliminated?).to be false
      
      team.eliminate
      
      expect(team.eliminated?).to be true
    end
  end
  
  describe "#add_players" do 
    it "can add players to the roster" do 
      team = Team.new("France")
      mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
      pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
      
      expect(team.players).to eq([])
      
      team.add_player(mbappe)
      team.add_player(pogba)
      
      expect(team.players).to eq([mbappe, pogba])
    end
  end
  
  describe "#players_by_position" do 
  it "can find players by their position" do 
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    
    team.add_player(mbappe)
    team.add_player(pogba)

    expect(team.players_by_position("midfielder")).to eq([pogba])
    end
  end
end