class Team 
  attr_reader :country, 
              :players

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated? 
    @eliminated
  end

  def eliminate
    @eliminated = true
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(position)
    player_position = []
    @players.each do |player|
      player_position << player if player.position == position
    end
    player_position
  end
end

