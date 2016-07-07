
class DockingStation

def initialize

@capacity = []

end


def release_bike


  fail 'No bikes available' unless @capacity.length > 0

  @capacity.pop


end

def dock(bike)
  raise "Station full - come back later" if @capacity.length == 20
  @capacity << bike
  end

end
