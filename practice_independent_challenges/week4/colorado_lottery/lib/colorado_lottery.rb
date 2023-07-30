class ColoradoLottery
  attr_reader :registered_contestants, :winners, :current_contestants

  def initialize
    @registered_contestants = Hash.new { |h, k| h[k] = []}
    @winners = []
    @current_contestants = {}
  end

  def interested_and_18?(contestant, game)
    if contestant.age >= 18 && contestant.game_interests.include?(game.name)
      true 
    else
      false
    end
  end

  def can_register?(contestant, game)
    if contestant.age >= 18 && contestant.game_interests.include?(game.name) 
      if !contestant.out_of_state? || contestant.out_of_state? && game.national_drawing?
        true
      elsif !contestant.out_of_state? && !game.national_drawing?
        true
      else
        false
      end
    else
      false
    end
  end

  def register_contestant(contestant, game)
    # @registered_contestants = Hash.new { |h, k| h[k] = []}
    @registered_contestants[game] << contestant if can_register?(contestant, game)
    contestant if can_register?(contestant, game)
  end

  def eligible_contestants(game)
      @registered_contestants[game].find_all do |contestant|
      contestant.spending_money >= game.cost
    end
  end
end