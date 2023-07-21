require "./lib/player"

RSpec.describe Player do 
  describe "#intialize" do 
    it "can exist" do 
      player = Player.new({name: "Luka Modric", position: "midfielder"})
      
      expect(player).to be_a Player
    end
    
    it "has a name and positions" do 
      player = Player.new({name: "Luka Modric", position: "midfielder"})

      expect(player.name).to eq("Luka Modric")
      expect(player.position).to eq("midfielder")
    end
  end
end