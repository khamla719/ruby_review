require_relative "equipment_status"

class WaterBottle
  include EquipmentStatus

  attr_reader :capacity, :material

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 2 }
    @material = args.fetch(:material) { "tin" }
  end

end
