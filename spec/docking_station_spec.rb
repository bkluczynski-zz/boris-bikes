require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it 'does not release broken bikes' do
    #let's superpower our double using allow().to receive().
    #and_return
    bike = double(:bike)
    allow(bike).to receive(:broken?).and_return(true)
    subject.dock(bike)
      expect { subject.release_bike }.to raise_error ("Sorry, there are no bikes")
    end

  it 'releases working bikes' do
    #let's substitute our Bike.new
    # for a double
    bike = double(:bike, broken?: false)
    subject.dock(bike)

        #no error yet: and no problem when
    #we release the 'bike': we just
    #get the double we made
    #a problem here: this double does not
    #know how to repond_to working?
      expect(subject.release_bike).to be bike

  end


  it 'returns docked bikes' do
    # Again, we need to return the bike we just docked
    bike = double(:bike)
    allow(bike).to receive(:broken?).and_return(true||false)
    expect(subject.dock(bike)).to eq bike
  end

  describe '#release_bike' do

    it 'releases a bike' do
    bike = double(:bike)
    allow(bike).to receive(:broken?).and_return(nil)
    subject.dock bike
    expect(subject.release_bike).to eq bike
    end

    it 'raises an error when station is new' do
      expect { subject.release_bike }.to raise_error ("Sorry, there are no bikes")
    end

  end

  describe '#dock' do

    it 'docks something' do
      bike = double(:bike)
      allow(bike).to receive(:broken?).and_return(true||false)
      expect(subject.dock(bike)).to eq bike
    end

    it 'raises an error when docking station is full' do
      bike = double(:bike)
      allow(bike).to receive(:broken?).and_return(true||false)
      subject.capacity.times { subject.dock bike }
      expect { subject.dock bike }.to raise_error("Sorry, Docking station full")
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    end

  describe 'initialization' do
      subject { DockingStation.new }
      let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
    end
        expect{subject.dock(bike)}.to raise_error 'Sorry, Docking station full'
    end
end





end
