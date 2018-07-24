require('minitest/rg')
require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Rameez", 28)
  end

  def test_person_name
    assert_equal("Rameez", @person.name)
  end

  def test_person_age
    assert_equal(28, @person.age)
  end


end
