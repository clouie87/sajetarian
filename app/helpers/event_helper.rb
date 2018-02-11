module EventHelper
  def todays_events
    @todays_events ||= Event.today
  end
end
