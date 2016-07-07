require 'docking_station'

describe DockingStation do
   it 'responds to request to release a bike' do
     expect(subject).to respond_to(:release_bike)
    end

  it 'docking the bike to the station' do
    expect(subject).to respond_to(:dock).with(1).argument

  end

  it 'expecting to tell whether the bike is docked' do
    expect(subject).to respond_to(:bike)
  end

  it 'docks something' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike

  end

  end
