class PagesController < ApplicationController
  def index
    @events = Event.all.map do |event|
      event.title = 'title_id_' + event.title
      event
    end
  end

  def show
  end

  def not_found
  end
end
