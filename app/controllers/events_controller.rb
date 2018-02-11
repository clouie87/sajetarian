class EventsController < ActionController::Base
  def index
    @events = Event.all
  end

  def todays_events
    events = Event.today
    render(partial: 'list', formats: :json, locals: { events: events })
  end
end
