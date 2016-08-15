require_relative "document_status"

class Invoice
  include DocumentStatus

  attr_reader :amount, :due_date, :invoicee

  def initialize(args = {})
    @amount = args.fetch(:amount)
    @due_date = args.fetch(:due_date) { Time.now.strftime("%m/%d/%Y") }
    @invoicee = args.fetch(:invoicee)
  end

end
