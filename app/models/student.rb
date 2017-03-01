class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def is_active?
    if self.active
      <<-HTML
      <div>"This student is currently active."</div>
      HTML
    else
      <<-HTML
      <div>"This student is currently inactive."</div>
      HTML
    end
  end

end
