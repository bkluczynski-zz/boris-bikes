require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "Sorry, there are no bikes" if empty?
    bikes.pop
  end

  def dock(bike)
    fail "Sorry, Docking station full" if full?
    bikes << bike
    bike
  end

  attr_reader :bikes

private
  def empty?
    bikes.empty?
  end

private
  def full?
    bikes.count >= capacity
  end

end #end class
