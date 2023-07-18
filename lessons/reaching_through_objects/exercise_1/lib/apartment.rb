class Apartment
  attr_reader :rented, :rooms

  def initialize
    @rented = false
    @rooms = []
  end

  def is_rented?
    @rented
  end

  def rent 
    @rented = true 
  end

  def add_room(room)
    @rooms << room
  end

  def list_rooms_by_name_alphabetically
    @rooms.map {|room| room.name }.sort

    # @rooms.map do |room|
    #   room.name
    # end.sort
  end
end