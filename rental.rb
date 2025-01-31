require_relative 'luggage'

class Rental

  attr_reader :bike, :bikePrice, :luggage

  def initialize(bike, bikePrice, extra_items)
    @bike = bike
    @bikePrice = bikePrice
    @luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items)
  end

  def totalPrice
    self.bikePrice + (self.bikePrice * 2) + (self.luggage.weight * 2)
  end

  def totalBikeWeight
    self.bike.weight + self.luggage.weight
  end

end

