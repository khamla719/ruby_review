class RoadTrip
  attr_accessor :name, :segments

  def initialize(args = {})
    @name = args[:name]
    @segments = args[:segments]
  end

  def add_segment(new_segment)
    @segments.push(new_segment)
  end

  def total_miles
    @segments.map(&:miles).reduce(:+)
  end

  def average_miles_per_segment
    total_miles / @segments.length
  end
end


