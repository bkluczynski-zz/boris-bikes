require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity, :working_bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @working_bikes = []
  end

  def release_bike
    raise "Sorry, there are no bikes" if empty?
    working_bikes.pop
  end


  def dock(bike)
    fail "Sorry, Docking station full" if full?
    if !bike.broken?
    working_bikes << bike
    else
    bikes << bike
    end
    bike
  end

  attr_reader :bikes

private
  def empty?
    working_bikes.empty?
  end

private
  def full?
    bikes.count + working_bikes.count >= capacity
  end

end #end class
