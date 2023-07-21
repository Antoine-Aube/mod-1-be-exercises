class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    players_by_position = []
    @teams.each do |team|
      if team.eliminated? != true 
        team.players_by_position(position).each do |player|
          players_by_position << player
        end
      end
    end
    players_by_position
  end

  def all_players_by_position
    all_players = Hash.new { |hash, key| hash[key] = [] }
    @teams.each do |team|
      team.players.each do |player|
        all_players[player.position] << player
      end
    end
    all_players
  end
end