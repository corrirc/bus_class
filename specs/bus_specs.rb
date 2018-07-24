require('minitest/rg')
require('minitest/autorun')
require_relative('../bus.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("Glasgow", 58)
  end

  def test_route_number
    assert_equal(58, @bus.route_number)
  end

  def test_destination
    assert_equal("Glasgow", @bus.destination)
  end

  def test_drive
    assert_equal("Brum Brum", @bus.drive)
  end


end
