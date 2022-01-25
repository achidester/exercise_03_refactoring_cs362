#Exercise 3 // cs362 // Alex Chidester

require_relative 'ice_box_refrigerator'
require_relative 'broken_refrigerator'
require_relative 'kombucha'
require_relative 'rootbeer'

class Kitchen

  def initialize(refrigerator = IceBoxRefrigerator.new)
    @refrigerator = refrigerator
  end

  #Method Wrapping, then delagating add_beer_to_refrigerator into more general add_bev method
  def add_bev_to_refrigerator(beverage)
    puts "Added bev"
    @refrigerator.add( beverage )
  end

  #adding parameter
  def add_beer_to_refrigerator(beverage)
    self.add_bev_to_refrigerator( beverage )
  end

  def to_s
    fridge_volume = @refrigerator.height * @refrigerator.width * @refrigerator.depth
    fridge_volume_gallons = fridge_volume * 7.48052
    "Kitchen. Fridge volume = #{fridge_volume_gallons} gallons"
  end
end

# Current usage example:

kitchen = Kitchen.new()
kitchen.add_bev_to_refrigerator(Kombucha.new)
kitchen.add_beer_to_refrigerator(RootBeer.new)
puts kitchen

# kitchen has an IceBoxRefrigerator with a RootBeer in it.

# Problem: you can't create a kitchen with a different fridge, and you can't
#          add any beverage other than beer.

# Goal: Create a kitchen with a BrokenRefrigerator, and add Kombucha to it.

