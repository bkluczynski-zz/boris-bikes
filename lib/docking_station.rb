
class DockingStation


  attr_reader :bike



def release_bike
  fail 'No bikes available' unless @bike
  @bike
end

def dock(bike)
  raise "Station full - come back later" if @bike
  @bike = bike
end

end
