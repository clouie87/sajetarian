class EventsController < ActionController::Base
  def index
    if params[:month].present?
      time = Time.now
      month = Date.new(time.year, params[:month].to_i)
      @events = Event.all.where("starts_at > ?", month)
    else
      @events = Event.all
    end

  end

  def todays_events
    events = Event.today
    render(partial: 'list', formats: :json, locals: { events: events })
  end
end
