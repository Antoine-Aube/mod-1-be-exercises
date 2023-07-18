class Street
  attr_reader :name,
              :buildings_list

  def initialize(name)
    @name = name 
    @buildings_list = []
  end

  def add_building(building)
    @buildings_list << building
  end
end