require 'docking_station.rb'

describe DockingStation do
  it "docking station responds to release bike" do
  expect(subject).to respond_to :release_bike
  end

  it "allows a bike to be docked" do
  expect(subject).to respond_to(:dock).with(1).argument
  end

    # it "returns if a bike is docked" do
    #   bike = Bike.new
    # subject.dock(bike)
    # expect(subject.bike).to eq(bike)
    # end

describe "#release_bike" do

  # it "gets bike and checks bike is working" do
  # bike = subject.release_bike
  # expect(bike).to be_working
  # end

  it "raises an error when there are no more bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes docked"
  end

describe "dock" do
    # it "docks a bike" do
    # bike = Bike.new
    # expect(subject.dock(bike)).to eq(bike)
    # end

  it "raising an error when docking ststion is full" do
    bike = Bike.new
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock Bike.new
    end
    expect { subject.dock(bike) }.to raise_error "Docking station full"
  end


end
end
end
