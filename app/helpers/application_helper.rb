module ApplicationHelper
  def alert_class(name)
    name = name.to_sym
    case name
    when :notice, :success then :success
    when :warning then :warning
    when :info then :info
    else :danger
    end
  end
end
