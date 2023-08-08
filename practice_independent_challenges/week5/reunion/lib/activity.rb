class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(participant, cost)
    @participants[participant] = cost
  end

  def total_cost
    @participants.sum {|participant, cost| cost}
  end
end