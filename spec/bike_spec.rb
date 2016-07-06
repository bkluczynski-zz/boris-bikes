require "bike"

describe Bike do
  it 'responds to request to see whether a bike is working' do
       expect(subject).to respond_to(:working?)
  end
end
