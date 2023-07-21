require './lib/world_cup'
require './lib/team'
require './lib/player'

RSpec.describe WorldCup do 
  before(:each) do 
    @france = Team.new("France")
    @croatia = Team.new("Croatia")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @modric = Player.new({name: "Luka Modric", position: "midfielder"}) 
    @vida = Player.new({name: "Domagoj Vida", position: "defender"}) 
    @world_cup = WorldCup.new(2018, [@france, @croatia])
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)
    @france.add_player(@mbappe)
    @france.add_player(@pogba)
  end 

  describe "#initialize" do 
    it "it exists" do
      expect(@world_cup).to be_a WorldCup
    end

    it "has a year and teams" do
      expect(@world_cup.year).to eq(2018)
      expect(@world_cup.teams).to eq([@france, @croatia])
    end
  end

  describe "#active_players_by_position" do 
    it "has an array of active players" do
      # require 'pry';binding.pry
      expect(@world_cup.active_players_by_position("midfielder")).to eq([@pogba, @modric])

      @croatia.eliminate

      expect(@world_cup.active_players_by_position("midfielder")).to eq([@pogba])
    end
  end

  describe "#all_players_by_position" do 
    it "returns all players by position" do
      expect(@world_cup.all_players_by_position).to eq({"forward" => [@mbappe], "midfielder" => [@pogba, @modric], "defender" => [@vida]})
    end
  end
end  


