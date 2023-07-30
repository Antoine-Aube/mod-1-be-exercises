class ColoradoLottery
  attr_reader :registered_contestants, :winners, :current_contestants

  def initialize
    @registered_contestants = {}
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
end