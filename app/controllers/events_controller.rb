class EventsController < ApplicationController


  before_action :move_to_index, except: [:index]

  def index
    @events = Event.includes(:user)
  end

  def new
    @event = Event.new
  end

  def create
    if Event.create(event_params)
      redirect_to events_path
      else
        render :new
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
  end
  

  private
  def event_params
    params.require(:event).permit(:event_name).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
  