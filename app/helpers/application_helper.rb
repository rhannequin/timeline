module ApplicationHelper
  def set_alert_class(name)
    name = name.to_sym
    alert_class = case name
    when :notice, :success
      :success
    when :warning
      :warning
    when :info
      :info
    else
      :danger
    end
  end
end
