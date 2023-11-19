# Bike

class Bike

  STANDARD_WEIGHT_POUNDS = 200
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT_POUNDS)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @cargo_contents = []
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end

class Rental

  @attr_accessor bike, rented
  
  def initialize(bike)
    @bike = bike
    @rented = false
  end

  def rent!
    self.rented = true
  end 

end
