class Building
  attr_reader :building_number, 
              :building_name,
              :apartments

  def initialize(building_number, building_name)
    @building_number = building_number
    @building_name = building_name
    @apartments = []
  end

  def add_apartment(apartment)
    @apartments << apartment
  end

  def list_apartments
    @apartments
  end
end