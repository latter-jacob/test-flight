require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) {Airplane.new("cesna", 10, 150)}
  describe "#initialization" do

    it "type of airplane is returned" do
    expect(my_plane.type).to eq("cesna")
    end

    it "wingloading of airplane is returned" do
    expect(my_plane.wingloading).to eq(10)
    end

    it "horsepower of airplane is returned" do
    expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
   my_plane = Airplane.new("cesna", 10, 150)
    it "the plane went from off to started" do
      expect(my_plane.start).to eq("airplane just started")
    end

    it "the plane is already running" do
      expect(my_plane.start).to eq("already started")
    end

  end

  describe "#takeoff" do
    my_plane = Airplane.new("cesna", 10, 150)
    it "airplane started?" do
      expect(my_plane.takeoff).to eq("please start the airplane")
    end
    it "if started, takeoff" do
      my_plane.start
      expect(my_plane.takeoff).to eq("We have lift off")
    end
  end

  describe "#land" do
    my_plane = Airplane.new("cesna", 10, 150)
    it "check to see if started" do
      expect(my_plane.land).to eq("please start the airplane")
    end
    it "airplane taken off?" do
      my_plane.start
      expect(my_plane.land).to eq("please take off")
    end
    it "ready to land?" do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq("thank you for flying jake&jake air")
    end

  end

end
