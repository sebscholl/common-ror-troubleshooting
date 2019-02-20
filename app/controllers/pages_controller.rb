class PagesController < ApplicationController
  # def index
  #   @events = Event.all.map do |event|
  #     event.title = 'Event_title' + event.title
  #     event
  #   end
  # end

  def index
    @events = Event.all
    @producers = Producer.all

    if params[:search]
      @events = @events.select { |event| event.producer.title == params[:search] }
    end
  end

  def show
  end

  def not_found
  end
end
