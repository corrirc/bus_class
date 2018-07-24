require('minitest/rg')
require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')

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

  def test_number_of_passengers
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_pickup_person
    @bus.pickup_person(@person)
    assert_equal(1, @bus.number_of_passengers)
  end

  def test_drop_off_person
    @bus.drop_off_person("Ricky")
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_remove_all_passenger
    person2 = Person.new ("Ricky", 32)
    @bus.pickup_person(person2)
    @bus.remove_all_passengers
    assert_equal(0, @bus.number_of_passengers)
end
