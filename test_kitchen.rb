#Exercise 3 // cs362 // Alex Chidester

require 'minitest/autorun'
require_relative 'kitchen'

class KitchenTest < Minitest::Test
    
    def test_exsistence
        Kitchen.new
    end
end