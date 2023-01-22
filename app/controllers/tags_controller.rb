class TagsController < ApplicationController

  #before_action :set_eventtag, only: [:create]

  def index
    @tags = Tag.all
  end


  def new
    @tag = Tag.new
  end

  def create
   @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path
    else
      render :new
    end
  end

   def destroy
      tag = Tag.find(params[:id])
      tag.destroy
    end

  

private
  def tag_params
    params.require(:tag).permit(:tag_name).merge(event_id: params[:event_id])
  end


  #def set_eventtag
   #@event = Event.find(params[:event_id])
  #end
end


