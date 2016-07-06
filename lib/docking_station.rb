class DockingStation

  def release_bike
    Bike.new("bike")
  end
  
  def dock(bike)
    @bike = bike
  end
  
  attr_reader :bike
end