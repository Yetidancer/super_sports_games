require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test
  def setup
    @event1 = Event.new("Curling", [24, 30, 18, 20, 41])
  end

  def test_it_exists
    assert_instance_of Event, @event1
  end

  def test_max_age
    assert_equal 41, @event1.max_age
  end

  def test_min_age
    assert_equal 18, @event1.min_age
  end

  def test_average_age

  end 
end
