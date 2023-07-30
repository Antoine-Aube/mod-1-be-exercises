class Contestant
  attr_reader :full_name, :age, :spending_money, :game_interests

  def initialize(contestant_info)
    @full_name = "#{contestant_info[:first_name]} #{contestant_info[:last_name]}"
    @age = contestant_info[:age]
    @spending_money = contestant_info[:spending_money]
    @state_of_residence = contestant_info[:state_of_residence]
    @game_interests = []
  end

  def out_of_state?
    false if @state_of_residence == 'CO'
  end

  def add_game_interest(game)
    @game_interests << game
  end
end