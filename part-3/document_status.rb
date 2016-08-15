module DocumentStatus

  attr_reader :description
  attr_accessor :assigned_employee

  def assigned?
    !!@assigned_employee
  end

  def resolved?
    !!@resolved
  end

  def close
    @resolved = true
  end

end