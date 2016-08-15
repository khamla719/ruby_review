require_relative "document_status"

class IncidentReport
  include DocumentStatus

  attr_reader :reporter

  def initialize(args = {})
    @description = args.fetch(:description) { "Unknown damage" }
    @reporter = args.fetch(:reporter) { "anonymous" }
    @resolved = false
  end

end

