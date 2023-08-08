class Reunion
  attr_reader :name, :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

    def reunion_cost
      @activities.map do |activity|
        activity.total_cost 
      end.sum
    end

    def total_owed
     @activities.each_with_object(Hash.new(0)) do |activity, owed_totals|
        activity.owed.each do |participant, owed_amount|
          owed_totals[participant] += owed_amount
        end
      end
    end
end