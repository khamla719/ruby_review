require_relative "document_status"

class DamageReport
  include DocumentStatus

  def initialize(args = {})
    @description = args.fetch(:description) { "Unknown damage" }
    @resolved = false
  end

end
