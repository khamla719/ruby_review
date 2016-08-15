require_relative "equipment_status"

class Tent
  include EquipmentStatus
  attr_reader :capacity

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 3 }
  end

end
