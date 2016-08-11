class RoadTrip
  attr_accessor :name, :segments
  def initialize(args = {})
    @name = args[:name]
    @segments = args[:segments]
  end
end

