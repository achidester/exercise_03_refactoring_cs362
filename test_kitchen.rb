require 'minitest/autorun'
require_relative 'kitchen'
require_relative 'ice_box_refrigerator'

class KitchenTest < Minitest::Test
    
    def test_exsistence
        Kitchen.new
    end
end