module ApplicationHelper
  def upcommig_and_past(events)
    !!events.upcoming || events.past
  end
end
