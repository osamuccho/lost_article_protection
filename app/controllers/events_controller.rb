class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
  end

  private
  def event_params
    params.require(:event).permit(:event_name)
  end
  
end