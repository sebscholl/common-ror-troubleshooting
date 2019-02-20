class EventsController < ApplicationController
  def index
    @events = Event.all

    @events = @events.map { |event| 'Event_title' + event.title }
  end

  def show
    @event = Event.find_by(title: params[:title])
  end
end
