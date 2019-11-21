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
  # require "pry"; binding.pry

  def test_average_age
    assert_equal 26.6, @event1.average_age
  end

  def test_standard_deviation_age
    assert_equal 8.28, @event1.standard_deviation_age
  end
end
