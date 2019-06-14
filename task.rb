# OOP = data + behaviour

class Task
  attr_reader :description

  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def complete!
    @done = true
  end
end

