class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_or_nah
    if self.active == false
      "This student is currently inactive."
    else
      "This student is currently active."
    end
  end

  def alter_active_status
    self.active = !self.active
  end
end