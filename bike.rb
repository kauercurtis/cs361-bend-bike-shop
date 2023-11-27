# Bike
# require_relative 'luggage'

class Bike

  STANDARD_WEIGHT_POUNDS = 200

  attr_reader :id, :color, :weight

  def initialize(id, color)
    @id = id
    @color = color
    @weight = STANDARD_WEIGHT_POUNDS
  end

end
