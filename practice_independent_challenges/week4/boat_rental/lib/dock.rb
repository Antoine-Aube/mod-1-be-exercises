class Dock 
  attr_reader :name, :max_rental_time, :rental_log, :total_charges

  def initialize(name, max_rental_time)
    @name = name 
    @max_rental_time = max_rental_time
    @rental_log = {}
    @total_charges = 0
  end

  def rent(boat, renter)
    rental_log[boat] = renter
  end

  def charge(boat)
    if boat.hours_rented > @max_rental_time
      amount = @max_rental_time * boat.price_per_hour
    else 
      amount = boat.hours_rented * boat.price_per_hour
    end

    charges = {}
    card = @rental_log[boat].credit_card_number

    charges[:card_number] = card
    charges[:amount] = amount 

    @total_charges += charges[:amount]
    charges
  end

  def return(boat)
    @rental_log.delete(boat)
    @boats_returned += 1
  end

  def log_hour
    @rental_log.each_key do |boat|
      boat.add_hour
    end
  end

  def revenue 
    @total_charges
  end
end