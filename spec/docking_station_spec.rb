<<<<<<< HEAD
require 'docking_station'

describe DockingStation do
   it 'responds to request to release a bike' do
     expect(subject).to respond_to(:release_bike)
    end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it { is_expected.to respond_to(:bike) }

    it 'returns docked bike' do
    	bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
    end

  end
=======
>>>>>>> 3a404e4df53f27fa4c8e4592f9bfc4e121ef7c5e
