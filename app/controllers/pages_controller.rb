class PagesController < ApplicationController
  # def index
  #   @events = Event.all.map do |event|
  #     event.title = 'Event_title' + event.title
  #     event
  #   end
  # end

  # def index
  #   @events = Event.all
  #   @producers = Producer.all

  #   if params[:search]
  #     @events = @events.select { |event| event.producer.title == params[:search] }
  #   end
  # end

  def index
    @producers = Producer.all

    if params[:search]
      @events = Event.includes(:producer).where(producers: { title: params[:search] })
    else
      @events = Event.all
    end
  end

  def show
  end

  def not_found
  end
end
